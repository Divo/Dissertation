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
</html></richcontent>
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
</html></richcontent>
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
</html></richcontent>
<node CREATED="1352491006567" ID="ID_1184938510" MODIFIED="1352491026465">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allows existing erros in S to be calculated
    </p>
  </body>
</html></richcontent>
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
</html></richcontent>
<node CREATED="1352491139012" ID="ID_108573332" MODIFIED="1352491160106">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Cost of horizontal transitions along C
    </p>
  </body>
</html></richcontent>
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
</html></richcontent>
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
</html></richcontent>
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
</html></richcontent>
</node>
</node>
<node CREATED="1352491602714" ID="ID_1470543149" MODIFIED="1352491701823" TEXT="Approximate cuts">
<node CREATED="1352491820706" ID="ID_1119315528" MODIFIED="1352491830659" TEXT="Need to read prior work to understand this"/>
<node COLOR="#cc0033" CREATED="1352491837967" ID="ID_1882642915" MODIFIED="1352491851010" TEXT="JSTS06"/>
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
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1352492186357" ID="ID_21757293" MODIFIED="1352492200923" POSITION="right" TEXT="Feature alignment">
<icon BUILTIN="full-5"/>
<node CREATED="1352492574321" ID="ID_1862249199" MODIFIED="1352492607734" TEXT="Cost cut does not gaurentee good results, particularly if a texture contains alligned structural patterns"/>
<node CREATED="1352493647849" ID="ID_1067500901" MODIFIED="1352493729869">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Small deformations applied&#160;to align feature along each side of C
    </p>
  </body>
</html></richcontent>
<node CREATED="1352493747368" ID="ID_267608840" MODIFIED="1352493780591" TEXT="Colours along C are offset to match colours in E[S] on te ither side of C">
<node CREATED="1352494234266" ID="ID_356914567" MODIFIED="1352494277001" TEXT="Cost of verticl transitions ignored, Jmax makes offsetting the colours on the vertical too hard"/>
<node CREATED="1352494342026" ID="ID_911270727" MODIFIED="1352494509189">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Again, this is done using a cost function
    </p>
    <p>
      The offset image, D, is obtained by minimizing this cost function.
    </p>
    <p>
      The offset is limitde to &lt;= 2 (chosen empirically) to minimize deformation.
    </p>
  </body>
</html></richcontent>
<node CREATED="1352494844830" ID="ID_16992865" MODIFIED="1352494902220">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Inital State
    </p>
    <p>
      D must start and end at the same abscissa in T. Same approximation is used as in approximating the cuts
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1352493781326" ID="ID_275516475" MODIFIED="1352493818292" TEXT="The deformation is then smoothly propagated to the inside of P">
<node CREATED="1352494952948" ID="ID_293765865" MODIFIED="1352494997947" TEXT="The deformation is interpolated inwards using MATHS"/>
</node>
</node>
</node>
<node CREATED="1352495022370" ID="ID_1446690047" MODIFIED="1352495034769" POSITION="left" TEXT="Patch Rejection">
<icon BUILTIN="full-6"/>
<node CREATED="1352495045182" ID="ID_206795199" MODIFIED="1352495231191">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      iff enegy of cut &lt;= 0 then the patch is accepted
    </p>
    <p>
      (Recall that this really means the errors in the new cut are less than the errors in the result so far)
    </p>
    <p>
      This is applied before feature alignment.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1352495279838" ID="ID_1118450605" MODIFIED="1352495957163">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Next is applied after feature alignment
    </p>
    <p>
      Energy along C after offsetting + Total energy in P after deformation - Total existing energy left of C &lt;= 0
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1352496046313" ID="ID_116325794" MODIFIED="1352496057588" POSITION="right" TEXT="Implmentation details">
<icon BUILTIN="full-7"/>
<node CREATED="1352496105540" ID="ID_309375210" MODIFIED="1352496149377">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      CUDA used
    </p>
    <p>
      One thread per patch, simply limited by the boudries of the patch
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1352496161335" ID="ID_612950555" MODIFIED="1352496217889">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Buffers for energy of cut optimization is reused for energy of cut after offset
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1352496243451" ID="ID_369997572" MODIFIED="1352496261801" TEXT="Texture buffers allocated based on patch size"/>
<node CREATED="1352558381498" ID="ID_1989096966" MODIFIED="1352558396631" TEXT="All transition costs pre-computed prior to optimization">
<node CREATED="1352559116071" ID="ID_1125552332" MODIFIED="1352559134405" TEXT="These are stored in order to speed up the optimization function"/>
</node>
<node COLOR="#ff0066" CREATED="1352559170710" ID="ID_1934629123" MODIFIED="1352559865334">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      DP is optimized with top-down -sub-solution pre-computation
    </p>
    <p>
      Don't really get this bit
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1352559239532" ID="ID_1185218733" MODIFIED="1352559260767" TEXT="For each patch, cut wth lowest cost selected"/>
<node CREATED="1352559300402" ID="ID_682411585" MODIFIED="1352559328407">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Each row depends only on the row before it so it's very trivially parallisable
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1352559602071" ID="ID_1442778995" MODIFIED="1352559633723" TEXT="Accumulation of DP has 3 limitations for single row prallelism">
<node CREATED="1352559662768" ID="ID_203685653" MODIFIED="1352559699492" TEXT="Parallelizing a single row at a time produces too few threads"/>
<node CREATED="1352559722220" ID="ID_184586203" MODIFIED="1352559730689" TEXT="After a row is complete a global sync is needed"/>
<node CREATED="1352559754880" ID="ID_250682956" MODIFIED="1352559800612" TEXT="The sync suspends the computation in a column for a long time. Other computations fill-up the cache in the mean time destroying it&apos;s coherence"/>
<node CREATED="1352559815005" ID="ID_1440507041" MODIFIED="1352560438064">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      These are addressed by processing many rows at once. This is done by subdividing H into blocks
    </p>
    <p>
      Blocks must be padded to left, right and above to ensure coherent calculation. These calculations are wasted but it's worth it for the coherence gains
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1352560614637" ID="ID_1642038422" MODIFIED="1352560626163" TEXT="Block size determined empirically"/>
<node CREATED="1352560639394" ID="ID_867880935" MODIFIED="1352560653576" TEXT="Same approach used for bottom-up backtracking, without padding"/>
</node>
</node>
<node CREATED="1352560730366" ID="ID_1041695976" MODIFIED="1352560795883" TEXT="Optimization of energy function after deformation is the same, except V and Ev are set to 0 as vertical transition costs are ignored. Jmax is set to 1"/>
</node>
</node>
<node CREATED="1352560906213" ID="ID_1131357918" MODIFIED="1352560916014" POSITION="left" TEXT="Results">
<icon BUILTIN="full-8"/>
<node CREATED="1352560924716" ID="ID_751738070" MODIFIED="1352560937391" TEXT="S is init with white noise texture coordinates"/>
<node CREATED="1352560938513" ID="ID_1007957625" MODIFIED="1352560994748" TEXT="One thing to note, the method, will impressive requires a fair amount of &quot;emprically determined&quot; constants, 7 in all, 6 if radius is discounted"/>
<node CREATED="1352561066387" ID="ID_1245751301" MODIFIED="1352561110693">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      R is the maximum POSSIBLE radius
    </p>
    <p>
      Also synthesisr must be iterated a few times to ensure complete coverage
    </p>
  </body>
</html>
</richcontent>
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
</html></richcontent>
</node>
</node>
<node CREATED="1352561133650" ID="ID_1846406131" MODIFIED="1352561206707">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Radius has the most effect on quality.
    </p>
    <p>
      Too small and intresting features are not captured.
    </p>
    <p>
      Too large and no varity is produced
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1352561275302" ID="ID_767664480" MODIFIED="1352561331711" TEXT="The radius (and Dmax) for that matter can &quot;automatically&quot; be found by gradually reducing them, both no method for detecting an ideal result is presented">
<node CREATED="1352561333713" ID="ID_994928675" MODIFIED="1352561353702" TEXT="The nature of the examplar has a big effect on these values"/>
</node>
<node CREATED="1352561376767" ID="ID_1572820680" MODIFIED="1352561421784">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Texture completion
    </p>
    <p>
      Can also be used for texture completion by assigning infinte cost to holes
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1352561423326" ID="ID_1939041863" MODIFIED="1352561535028">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Texture painting
    </p>
    <p>
      By using multiple examlpars
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1352561927851" ID="ID_358330801" MODIFIED="1352561933008" TEXT="Drag and drop, see video"/>
<node CREATED="1352562301709" ID="ID_252869793" MODIFIED="1352562429448">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      PERFORMANCE, pg 9
    </p>
    <p>
      Slower but gives far better results
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</map>
