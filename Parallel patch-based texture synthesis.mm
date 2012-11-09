<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1352406224177" ID="ID_1247610236" MODIFIED="1352406280972" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Parallel patch-based texture synthesis
    </p>
  </body>
</html></richcontent>
<edge COLOR="#808080" STYLE="bezier" WIDTH="thin"/>
<node CREATED="1352406282099" ID="ID_1354977840" MODIFIED="1352406546924" POSITION="right" TEXT="Intro">
<icon BUILTIN="full-1"/>
<node CREATED="1352406290908" ID="ID_217240384" MODIFIED="1352406294877" TEXT="Pixel based">
<node CREATED="1352406304509" ID="ID_731948811" MODIFIED="1352406329859" TEXT="Highly paralliasable, map well to GPUs"/>
</node>
<node CREATED="1352406295839" ID="ID_805814092" MODIFIED="1352406298338" TEXT="Patch based">
<node CREATED="1352406374464" ID="ID_1467807509" MODIFIED="1352406399396" TEXT="Slower but produce better results"/>
</node>
<node COLOR="#ff0033" CREATED="1352406352450" ID="ID_1054589048" MODIFIED="1352406372816" TEXT="WLKT09"/>
<node CREATED="1352406407858" ID="ID_751921377" MODIFIED="1352406438672">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This paper presents fast patch based approach
    </p>
  </body>
</html></richcontent>
<node CREATED="1352406443117" ID="ID_130749514" MODIFIED="1352406462280" TEXT="Fast, approximate algo to optimize patch boundries"/>
<node CREATED="1352406468865" ID="ID_1502920562" MODIFIED="1352406480614" TEXT="Deformation algorigthm to align features"/>
<node CREATED="1352406488974" ID="ID_1729169401" MODIFIED="1352406514461" TEXT="Texture synthesize by optimizinf multiple patches in parallel"/>
<node CREATED="1352406518106" ID="ID_1551178623" MODIFIED="1352406528247">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Full GPU implementation
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1352406535616" ID="ID_1018791209" MODIFIED="1352406551916" POSITION="left" TEXT="Related work">
<icon BUILTIN="full-2"/>
<node CREATED="1352406535616" ID="ID_101445447" MODIFIED="1352406728132">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Synthesis
    </p>
  </body>
</html></richcontent>
<node COLOR="#000000" CREATED="1352406592529" ID="ID_866553009" MODIFIED="1352407028835">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Random patches with featherd edges <i>GSX, PFH00</i>
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#000000" CREATED="1352406624795" ID="ID_1411315116" MODIFIED="1352407061502">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Image quilting, patches added in scanline order to a grid
    </p>
    <p>
      <i>EF01</i>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1352406667760" ID="ID_536362499" MODIFIED="1352407088227">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Graph cut: Like above but with arbitrary patch shapes <i>KSE*03</i>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352406729973" ID="ID_931733036" MODIFIED="1352406736190" TEXT="Placement">
<node CREATED="1352406752501" ID="ID_1619247759" MODIFIED="1352407094414" TEXT="FFT-based block matching algo KSE*03"/>
<node CREATED="1352406793242" ID="ID_849987418" MODIFIED="1352407099672" TEXT="Patchmatch: Matching small patches with alternating coherent and random searches BSFG09"/>
<node CREATED="1352406844635" ID="ID_1083216872" MODIFIED="1352406888810" TEXT="This paper aims to imporve the stitching of large patches with simple, uniform random patch sampling"/>
</node>
<node CREATED="1352406893295" ID="ID_1462467379" MODIFIED="1352406896337" TEXT="Stitching">
<node CREATED="1352406909259" ID="ID_1858877676" MODIFIED="1352407111403" TEXT="Graph cut BVZ99"/>
<node CREATED="1352406924842" ID="ID_67990887" MODIFIED="1352407113720" TEXT="Poisson image editing PGB03"/>
<node CREATED="1352407114732" ID="ID_1602267774" MODIFIED="1352407265771">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Drag and drop pasting JST06
    </p>
    <p>
      Cyclic boundary around the patch is computed so as to reduce gradient mistmatch prior to Poisson optimzation
    </p>
    <p>
      Optimal boundary in multiple passes
    </p>
  </body>
</html></richcontent>
<node CREATED="1352407213809" ID="ID_677643962" MODIFIED="1352407252557" TEXT="This paper comptes an approximate cycle in a single pass"/>
</node>
</node>
<node CREATED="1352407273785" ID="ID_1627146976" MODIFIED="1352407279145" TEXT="Feature alignment">
<node CREATED="1352407339242" ID="ID_846103629" MODIFIED="1352407375819" TEXT="Sparse set of curvilinear features capturing contours WY04"/>
<node CREATED="1352407378319" ID="ID_828877910" MODIFIED="1352407399971" TEXT="Other approaches that kinda rely on manual feature alignment"/>
<node COLOR="#0033cc" CREATED="1352407640221" ID="ID_691708918" MODIFIED="1352407670807" TEXT="There approach is automatic and needs reading up on, last paragraph of section 2, pg 2"/>
</node>
</node>
<node CREATED="1352407676378" ID="ID_513224490" MODIFIED="1352407698236" POSITION="right" TEXT="&quot;Our&quot; patch based synthesizer">
<icon BUILTIN="full-3"/>
<node CREATED="1352407738982" ID="ID_243009062" MODIFIED="1352407859130" TEXT="Given source exemplar, E, the method texture is is created by repeatedly stitching mutliple patches from E"/>
<node CREATED="1352407859797" ID="ID_1828699944" MODIFIED="1352407901798" TEXT="Iterative synthesis, multiple patches randomly selcted in E and placed on S.">
<node CREATED="1352407909002" ID="ID_1378158800" MODIFIED="1352408015507">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Patches in S do not overlap. S is overlayed with
    </p>
    <p>
      a grid where each cell contains one patch. Alignment of
    </p>
    <p>
      the grid w.r.t the synth image randomly changes with each iteration
    </p>
    <p>
      to avoid bias. Cells are processed in parallel
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352408025537" ID="ID_1133266014" MODIFIED="1352408051785" TEXT="Each patch placed in a cell is optimized to minimize visual seams">
<node CREATED="1352408069062" ID="ID_1586903099" MODIFIED="1352408147102">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Minimize discontinuities along the cut
    </p>
    <p>
      Deform patch to align features. This is constrained to avoid altering the pattern
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352408158264" ID="ID_1319340305" MODIFIED="1352408184373" TEXT="Patch is rejected if the seam has more error than all the existing seams inside the cut"/>
</node>
<node CREATED="1352477027657" ID="ID_1046419203" MODIFIED="1352477044507" POSITION="left" TEXT="Fast approximate cycle cuts">
<icon BUILTIN="full-4"/>
<node CREATED="1352477027657" ID="ID_748166487" MODIFIED="1352481367896">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Calculating cut
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1352477051703" ID="ID_1288276443" MODIFIED="1352477080267">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Bondary optimization for a single patch, P, discssed here
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1352477082120" ID="ID_724198239" MODIFIED="1352477134684" TEXT="P is a disk of radius R at a position Oe in E and placed at a center position Os on S (S is the result)"/>
<node CREATED="1352477141467" ID="ID_1278638063" MODIFIED="1352477195077" TEXT="Goal is to find a closed cut C in P that contains at least Os in S. C should produce as little colour difference as possible bewteen P and E[S}"/>
<node COLOR="#cc0033" CREATED="1352477231507" ID="ID_1496035326" MODIFIED="1352478838189">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Lookup Graph cut
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1352478849474" ID="ID_1828376352" MODIFIED="1352478901500">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      DP is used instead of graph cut as it rekies on simple arrays and is thus more suited to GPUs
    </p>
  </body>
</html></richcontent>
<node CREATED="1352478911450" ID="ID_1593432213" MODIFIED="1352478925365" TEXT="P must be processed in polar space to be compatable with DP"/>
</node>
<node COLOR="#cc0033" CREATED="1352480008632" ID="ID_851724611" MODIFIED="1352480021309" TEXT="I don&apos;t think I will ever understand polar space">
<node CREATED="1352480981591" ID="ID_1582925282" MODIFIED="1352481001416">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Just go with &quot;unwrapping the circular image&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352480225764" ID="ID_1075953082" MODIFIED="1352480387562">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Ppolar is a rectangle of size W * H. W = Np * R and H = N(theta) * 2(pie)R.
    </p>
    <p>
      Np and N(theta) are constant factors use to add accuracy when transforming P into
    </p>
    <p>
      Ppolar. Note T is the transforamtion from cartesian to polar and T-1, the inverse
    </p>
  </body>
</html></richcontent>
<node CREATED="1352480433161" ID="ID_1054703840" MODIFIED="1352480477629" TEXT="To account for distortion when transforming to polar space a normalization is needed"/>
</node>
<node CREATED="1352480488077" ID="ID_118825317" MODIFIED="1352480976943">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Using Ppolar the cut is now a path that starts at the first row of Ppolar and ends at the last row
    </p>
    <p>
      It must start and end in the same column (x posiiton or abscissa if you're a wanker)
    </p>
  </body>
</html></richcontent>
<node CREATED="1352491297967" ID="ID_745585756" MODIFIED="1352491324289" TEXT="JMAX (max horizontal variation) is relaxed considerably compared to graph cut"/>
</node>
<node CREATED="1352480612407" ID="ID_1215426162" MODIFIED="1352481101062">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Transform C back using T-1. The existing seams in S now lie on the left side of C in Ppolar and will be hidden by the newly placed patch P
    </p>
  </body>
</html></richcontent>
<node CREATED="1352481110468" ID="ID_118339028" MODIFIED="1352481112410" TEXT="VISUALS"/>
</node>
</node>
<node CREATED="1352481368865" ID="ID_1287007960" MODIFIED="1352490596455">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Seam cost
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1352490603579" ID="ID_594995995" MODIFIED="1352490919839">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Cost function used to quanitfy visible discontinuities along C
    </p>
    <p>
      Similar to the one used in graph cut, that seems to enough explanaiton for them
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1352491006567" ID="ID_1184938510" MODIFIED="1352491026465">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allows existing erros in S to be calculated
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1352490931840" ID="ID_1926505153" MODIFIED="1352490949895" TEXT="Patch cost">
<node CREATED="1352491041236" ID="ID_757004916" MODIFIED="1352491132643">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Each patch is given a quality
    </p>
    <p>
      Cost of seam C - exisiting cost to the left of C (results in cost insside T-1(C)
    </p>
    <p>
      This leaves an energy function with 3 terms
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1352491139012" ID="ID_108573332" MODIFIED="1352491160106">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Cost of horizontal transitions along C
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1352491199629" ID="ID_696460940" MODIFIED="1352491389869">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Cost of vertical transitions along C
    </p>
    <p>
      V has to sum up all of the vertical costs that may appear in one increment due to Jmax beong relaxed.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1352491416002" ID="ID_127467695" MODIFIED="1352491471729">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Existing errors in S
    </p>
    <p>
      The errors on the left side of C and will be hidden by P, so they are subtracted.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1352491549668" ID="ID_47628945" MODIFIED="1352491599023">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      All solutions for the energy function are precomputed to optimize the DP
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1352491602714" ID="ID_1470543149" MODIFIED="1352491701823" TEXT="Approximate cuts">
<node CREATED="1352491820706" ID="ID_1119315528" MODIFIED="1352491830659" TEXT="Need to read prior work to understand this"/>
<node COLOR="#cc0033" CREATED="1352491837967" ID="ID_1882642915" MODIFIED="1352491851010" TEXT="JSTS06"/>
<node CREATED="1352491857531" ID="ID_995802785" MODIFIED="1352491977815">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Jist of it is:
    </p>
    <p>
      They backtrack all paths from bottom to top to find at least one path with the same abscissa, rather than runing the optimization for every start and end point
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1352492013652" ID="ID_489153909" MODIFIED="1352492049508">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This works almost as well as the optimal cut
    </p>
    <p>
      Any cases where it does not are likely to be rejected later
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1352492186357" ID="ID_21757293" MODIFIED="1352492200923" POSITION="right" TEXT="Feature alignment">
<icon BUILTIN="full-5"/>
</node>
</node>
</map>
