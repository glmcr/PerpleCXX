      implicit none

      include 'perplex_parameters.h'

      double precision a(5*l5,40), b(5*l5,40), x, y, ymax, ymin,
     *                 xmax, xmin, z
       
      integer itic(40),i,icod,j,ier

      character*1 yes

      character*100 prject,tfname
      common/ cst228 /prject,tfname

c----------------------------------------------------------------------
c                                 version info
      call vrsion (6)

      write (*,1030) 

      do 
c                                 get input file 
         write (*,1000) 
          
         call readrt

         call mertxt (tfname,prject,'.pts',0)
         
         open (n4,iostat=ier,file=tfname,status='old')

         if (ier.ne.0) then
       
            write (*,1010) tfname
            read (*,'(a)') yes

            if (yes.eq.'Y'.or.yes.eq.'y') cycle 

            stop

         end if

         exit  

      end do        

      call mertxt (tfname,prject,'.plt',0)
      open (11,file=tfname)
      write (*,1020) tfname

      write (*,1040)
      read (*,'(a)') yes 

        do i = 1, 40
           itic(i) = 0
        end do
        xmax = -99d33
        xmin = 99d33
        ymin = 99d33
        ymax = -99d33
       
10      if (yes.eq.'y'.or.yes.eq.'Y') then 
           read (n4,*,end=20) icod, y, x, z
        else
           read (n4,*,end=20) icod, x, y, z
        end if 

        icod = icod + 1

        if (x.lt.xmin) xmin = x 
        if (x.gt.xmax) xmax = x
        if (y.lt.ymin) ymin = y
        if (y.gt.ymax) ymax = y
 
        itic(icod) = itic(icod) + 1

        if (itic(icod).gt.5*l5) then 
           write (*,*) '** error ** too many points,',
     *                 ' increase parameter l5.'
           goto 99
        end if 

        a(itic(icod),icod) = x
        b(itic(icod),icod) = y
        goto 10 

20    write (11,2020) 0.,' ',' ',' ',' ',xmax,xmin,ymax,ymin,
     *                '   X   ','   Y   '
      do i = 1, 30
         if (itic(i).ne.0) then

            write (11,'(i5,1x,8(i3,1x),/,g12.6)') 
     *            itic(i)*2,1,i,1,1,1,1,1,1,0e0
            write (11,*) (a(j,i),b(j,i),j=1,itic(i))

         end if
      end do 

2020  format ('1',/,'0 0 0',/,'0 0 0 0 0 0 ',/,g9.1,1x,a162,3(/,a162),/,
     *        '2 1 2 0 0',/,'0 0 0 0. 0. 0. 0. 0.',/,
     *        4(g12.6,1x),/,a,/,a)
1000  format (/,'Enter the POINT plot file name [',
     *       'without the .pts suffix]:')
1010  format (/,'**warning ver191** cannot find file:',/,a,/,
     *       'run WERAMI to generate it or try a different name (y/n)?')
1020  format (/,'The CURVE plot file will be named:',/,a)
1030  format (/,'This program converts a POINT plot file (usually ',
     *       'generated by WERAMI and',/,'plotted with PSPTS) to a ',
     *       'CURVE plot file (plotable with PSVDRAW).',/) 
1040  format (/,'Switch X and Y coordinates in the output ',
     *       '(y/n)?')

99    end 
