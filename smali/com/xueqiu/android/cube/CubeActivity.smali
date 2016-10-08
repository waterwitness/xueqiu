.class public Lcom/xueqiu/android/cube/CubeActivity;
.super Lcom/xueqiu/android/common/b;
.source "CubeActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/am;


# static fields
.field private static final au:[I


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/view/View;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/view/View;

.field private M:Lcom/xueqiu/chart/view/PieChart;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/view/View;

.field private Q:Lcom/xueqiu/android/common/widget/RadarChart;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/LinearLayout;

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/TextView;

.field private W:Lcom/xueqiu/chart/view/LineChart;

.field private X:Landroid/view/View;

.field private Y:Landroid/widget/TextView;

.field private Z:Landroid/view/View;

.field private aa:Landroid/view/View;

.field private ab:Landroid/widget/LinearLayout;

.field private ac:Landroid/view/View;

.field private ad:Landroid/widget/TextView;

.field private ae:Landroid/widget/ImageButton;

.field private af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

.field private ag:Landroid/widget/LinearLayout;

.field private ah:Landroid/widget/LinearLayout;

.field private ai:Landroid/graphics/drawable/Drawable;

.field private aj:Ljava/lang/String;

.field private ak:Z

.field private al:J

.field private am:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/d;",
            ">;"
        }
    .end annotation
.end field

.field private an:I

.field private ao:I

.field private ap:Ljava/lang/String;

.field private aq:Landroid/graphics/drawable/Drawable$Callback;

.field private ar:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private as:Z

.field private at:Lrx/j;

.field private av:Landroid/widget/TextView;

.field private aw:Landroid/widget/TextView;

.field private ax:Landroid/widget/TextView;

.field private ay:Landroid/view/View;

.field j:Landroid/widget/Button;

.field k:Landroid/widget/Button;

.field p:Landroid/widget/Button;

.field q:I

.field r:Lcom/xueqiu/android/common/widget/aj;

.field private s:Lcom/xueqiu/android/cube/model/Cube;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Lcom/xueqiu/android/community/widget/i;

.field private x:Lcom/xueqiu/android/community/a/ak;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2362
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "#AAAAAA"

    .line 2363
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#BBBBBB"

    .line 2364
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#CCCCCC"

    .line 2365
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#DDDDDD"

    .line 2366
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#EEEEEE"

    .line 2367
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/cube/CubeActivity;->au:[I

    .line 2362
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 287
    const-string v0, "all"

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->aj:Ljava/lang/String;

    .line 289
    iput-boolean v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->ak:Z

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 291
    iput-wide v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->al:J

    .line 293
    iput-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    .line 295
    iput v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->an:I

    .line 301
    new-instance v0, Lcom/xueqiu/android/cube/CubeActivity$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/CubeActivity$1;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->aq:Landroid/graphics/drawable/Drawable$Callback;

    .line 558
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ar:Ljava/util/Set;

    .line 560
    iput-boolean v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->as:Z

    .line 1759
    iput-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->at:Lrx/j;

    .line 2995
    return-void
.end method

.method static synthetic A(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 4

    .prologue
    .line 50573
    const-string v0, "/service/p/cubereport?symbol=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50574
    invoke-static {v0, p0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method static synthetic B(Lcom/xueqiu/android/cube/CubeActivity;)Lrx/j;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->at:Lrx/j;

    return-object v0
.end method

.method static synthetic C(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ad:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic D(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ae:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic E(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 5

    .prologue
    .line 164
    .line 50576
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getContractor()Lcom/xueqiu/android/cube/model/Contractor;

    move-result-object v0

    .line 50577
    const-string v1, "\u9500\u552e\u65b9\uff1a%s%n\u5ba2\u670d\u7535\u8bdd\uff1a%s%n\u8bc1\u5238\u6295\u8d44\u54a8\u8be2\u8bc1\u4e66\u7f16\u53f7\uff1a%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 50578
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Contractor;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 50579
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Contractor;->getTelephoneNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 50580
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Contractor;->getCertNo()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 50577
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50581
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50582
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$58;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeActivity$58;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 50583
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 50587
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 164
    return-void
.end method

.method static synthetic F(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->I:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic G(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->p()V

    return-void
.end method

.method static synthetic H(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->j()V

    return-void
.end method

.method static synthetic I(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->l()V

    return-void
.end method

.method static synthetic J(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 164
    .line 50770
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50771
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v0, v3, :cond_1

    .line 50772
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50773
    const-string v1, "extra_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50774
    const-string v1, "extra_page_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50775
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->startActivity(Landroid/content/Intent;)V

    .line 50776
    :cond_0
    :goto_0
    return-void

    .line 50777
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50778
    const-string v1, "extra_cube_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50779
    const-string v1, "extra_cube_id"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50780
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->startActivity(Landroid/content/Intent;)V

    .line 50781
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x579

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 50782
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50787
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 50783
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeActivity;Lrx/j;)Lrx/j;
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity;->at:Lrx/j;

    return-object p1
.end method

.method private a(ID)V
    .locals 10

    .prologue
    const/4 v3, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2619
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    .line 50103
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 50104
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v6

    .line 2619
    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v0, v1

    .line 2620
    :goto_0
    if-eqz v0, :cond_1

    .line 2621
    const v0, 0x7f07039a

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%.2f%%"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    .line 2622
    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Cube;->getTotalGain()Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "%.2f%%"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    .line 2621
    invoke-virtual {p0, v0, v3}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2627
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->r:Lcom/xueqiu/android/common/widget/aj;

    .line 50105
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 50106
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 2627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2628
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->r:Lcom/xueqiu/android/common/widget/aj;

    .line 50107
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 50108
    iput-object v0, v1, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 2629
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->r:Lcom/xueqiu/android/common/widget/aj;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/aj;->a(I)V

    .line 2630
    return-void

    :cond_0
    move v0, v2

    .line 2619
    goto :goto_0

    .line 2624
    :cond_1
    const v0, 0x7f07039b

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%.2f%%"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    .line 2625
    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Cube;->getTotalGain()Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "%.2f%%"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    .line 2624
    invoke-virtual {p0, v0, v3}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(J)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v1, 0x0

    .line 1522
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1567
    :cond_0
    :goto_0
    return-void

    .line 1526
    :cond_1
    const v0, 0x7f0e03d3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1527
    const v0, 0x7f0e03ce

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1528
    const-string v0, "cube_report_read_information"

    const-string v3, "{}"

    invoke-static {p0, v0, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1529
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    .line 1530
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v6

    cmp-long v0, v6, p1

    if-gez v0, :cond_4

    .line 1531
    :cond_2
    const/4 v0, 0x1

    .line 1534
    :goto_1
    iget-object v5, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v5}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    .line 13069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 13077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v8

    .line 1534
    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    .line 1535
    invoke-static {v5}, Lcom/xueqiu/android/cube/CubeActivity;->c(Lcom/xueqiu/android/cube/model/Cube;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 1536
    if-eqz v0, :cond_3

    .line 1537
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1538
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1539
    new-instance v0, Lcom/xueqiu/android/cube/CubeActivity$30;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/cube/CubeActivity$30;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Landroid/view/View;Lcom/google/gson/JsonObject;J)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1556
    :cond_3
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1557
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1558
    new-instance v0, Lcom/xueqiu/android/cube/CubeActivity$31;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/CubeActivity$31;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private a(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 1634
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 15180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 1635
    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$35;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/cube/CubeActivity$35;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xueqiu/android/base/b/ai;->c(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1659
    :goto_0
    return-void

    .line 16180
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 1647
    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$36;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/cube/CubeActivity$36;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 16426
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-static {p3}, Lcom/xueqiu/android/base/util/as;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v2, v1}, Lcom/xueqiu/android/base/b/c;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic a(Landroid/widget/Button;ZI)V
    .locals 0

    .prologue
    .line 164
    invoke-static {p0, p1, p2}, Lcom/xueqiu/android/cube/CubeActivity;->b(Landroid/widget/Button;ZI)V

    return-void
.end method

.method static synthetic a(Landroid/widget/TextView;Z)V
    .locals 0

    .prologue
    .line 164
    invoke-static {p0, p1}, Lcom/xueqiu/android/cube/CubeActivity;->b(Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeActivity;I)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/xueqiu/android/cube/CubeActivity;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeActivity;ID)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/cube/CubeActivity;->a(ID)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeActivity;J)V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/cube/CubeActivity;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeActivity;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/cube/CubeActivity;->a(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeActivity;Lcom/google/gson/JsonObject;)V
    .locals 17

    .prologue
    .line 50390
    if-eqz p1, :cond_b

    .line 50394
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 50395
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50398
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 50401
    const/4 v3, 0x0

    .line 50404
    :try_start_0
    const-string v2, "sub_scores"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    .line 50405
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 50406
    invoke-virtual {v8, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    .line 50407
    const-string v10, "score"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50408
    const-string v10, "name"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50405
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50411
    :cond_0
    const-string v2, "level"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    .line 50412
    const/4 v2, 0x1

    if-ne v4, v2, :cond_3

    .line 50413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/cube/CubeActivity;->Q:Lcom/xueqiu/android/common/widget/RadarChart;

    const-string v9, "#ffaa00"

    invoke-virtual {v2, v9}, Lcom/xueqiu/android/common/widget/RadarChart;->setPaintColor(Ljava/lang/String;)V

    .line 50419
    :goto_1
    const-string v2, "score_rank"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "score_rank"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 50420
    const-string v2, "score_rank"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v9

    .line 50421
    if-lez v9, :cond_1

    .line 50514
    const v2, 0x7f0e03d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 50515
    const v2, 0x7f0e03d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50516
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50517
    const v10, 0x7f0e03d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcom/xueqiu/android/cube/CubeActivity$29;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/xueqiu/android/cube/CubeActivity$29;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50526
    sget-object v10, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v11, "NO.%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50426
    :cond_1
    const-string v2, "score_updated_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v10

    .line 50427
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 50428
    const-string v9, "\uff08\u6700\u540e\u8bc4\u4f30\u65f6\u95f4\uff1ayyyy.MM.dd\uff09"

    invoke-static {v2, v9}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50429
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xueqiu/android/cube/CubeActivity;->R:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50430
    const-string v2, "report_updated_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50431
    const-string v2, "report_updated_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v10

    .line 50432
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/xueqiu/android/cube/CubeActivity;->a(J)V

    .line 50434
    :cond_2
    const-string v2, "total_score"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v10

    .line 50435
    const-string v2, "max_total_score"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v12

    .line 50437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/cube/CubeActivity;->Q:Lcom/xueqiu/android/common/widget/RadarChart;

    invoke-static {v10, v11}, Ljava/lang/Math;->rint(D)D

    move-result-wide v14

    double-to-int v9, v14

    invoke-virtual {v2, v9}, Lcom/xueqiu/android/common/widget/RadarChart;->setTotalScore(I)V

    .line 50438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/cube/CubeActivity;->Q:Lcom/xueqiu/android/common/widget/RadarChart;

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v8

    int-to-double v8, v8

    div-double v8, v12, v8

    double-to-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Lcom/xueqiu/android/common/widget/RadarChart;->setSubMaxScore(F)V

    .line 50440
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v8, v10

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 50441
    div-int/lit8 v5, v2, 0x2

    .line 50443
    rem-int/lit8 v2, v2, 0x2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    move v3, v4

    move v4, v5

    .line 50449
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/cube/CubeActivity;->Q:Lcom/xueqiu/android/common/widget/RadarChart;

    invoke-virtual {v5, v7}, Lcom/xueqiu/android/common/widget/RadarChart;->setScores(Ljava/util/List;)V

    .line 50450
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/cube/CubeActivity;->Q:Lcom/xueqiu/android/common/widget/RadarChart;

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/RadarChart;->setLabels(Ljava/util/List;)V

    .line 50451
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/cube/CubeActivity;->Q:Lcom/xueqiu/android/common/widget/RadarChart;

    invoke-virtual {v5}, Lcom/xueqiu/android/common/widget/RadarChart;->invalidate()V

    .line 50452
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/cube/CubeActivity;->Q:Lcom/xueqiu/android/common/widget/RadarChart;

    new-instance v6, Lcom/xueqiu/android/cube/CubeActivity$25;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/xueqiu/android/cube/CubeActivity$25;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/RadarChart;->setRectListener(Lcom/xueqiu/android/common/widget/ad;)V

    .line 50465
    const/4 v8, 0x0

    .line 50466
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/cube/CubeActivity;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 50468
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v5

    float-to-int v10, v5

    .line 50471
    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 50472
    const v5, 0x7f020250

    .line 50473
    const v6, 0x7f020251

    .line 50481
    :goto_4
    const/4 v7, 0x0

    move/from16 v16, v7

    move v7, v8

    move/from16 v8, v16

    :goto_5
    if-ge v8, v4, :cond_8

    .line 50482
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50483
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50484
    invoke-virtual {v9, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 50485
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xueqiu/android/cube/CubeActivity;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50486
    add-int/lit8 v9, v7, 0x1

    .line 50481
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move v7, v9

    goto :goto_5

    .line 50414
    :cond_3
    const/4 v2, 0x2

    if-ne v4, v2, :cond_4

    .line 50415
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/cube/CubeActivity;->Q:Lcom/xueqiu/android/common/widget/RadarChart;

    const-string v9, "#ff7700"

    invoke-virtual {v2, v9}, Lcom/xueqiu/android/common/widget/RadarChart;->setPaintColor(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 50445
    :catch_0
    move-exception v2

    move-object/from16 v16, v2

    move v2, v4

    move v4, v5

    move-object/from16 v5, v16

    .line 50446
    const-string v8, "CubeActivity"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto/16 :goto_3

    .line 50417
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/cube/CubeActivity;->Q:Lcom/xueqiu/android/common/widget/RadarChart;

    const-string v9, "#ff3333"

    invoke-virtual {v2, v9}, Lcom/xueqiu/android/common/widget/RadarChart;->setPaintColor(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 50443
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 50474
    :cond_6
    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    .line 50475
    const v5, 0x7f020252

    .line 50476
    const v6, 0x7f020253

    goto :goto_4

    .line 50478
    :cond_7
    const v5, 0x7f02024e

    .line 50479
    const v6, 0x7f02024f

    goto :goto_4

    .line 50488
    :cond_8
    if-eqz v2, :cond_f

    .line 50489
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50490
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50491
    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 50492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/cube/CubeActivity;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50493
    add-int/lit8 v2, v7, 0x1

    .line 50495
    :goto_6
    const/4 v4, 0x0

    :goto_7
    rsub-int/lit8 v5, v2, 0x5

    if-ge v4, v5, :cond_9

    .line 50496
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50497
    const v6, 0x7f020254

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50498
    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 50499
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/cube/CubeActivity;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50495
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 50502
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v4, 0x7f0e03da

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/xueqiu/android/cube/CubeActivity$26;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/xueqiu/android/cube/CubeActivity$26;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getOwnerId()J

    move-result-wide v4

    .line 50528
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 50529
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v6

    .line 50510
    cmp-long v2, v4, v6

    if-nez v2, :cond_b

    .line 50530
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "user_cube_level"

    const-string v5, ""

    invoke-static {v2, v4, v5}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50531
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/cube/CubeActivity$27;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/xueqiu/android/cube/CubeActivity$27;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 50532
    invoke-virtual {v5}, Lcom/xueqiu/android/cube/CubeActivity$27;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 50531
    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 50533
    if-nez v2, :cond_e

    .line 50534
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v4, v2

    .line 50536
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 50537
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 50539
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v3, :cond_b

    .line 50540
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50541
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "user_cube_level"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50553
    new-instance v4, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 50554
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 50555
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50556
    const v2, 0x7f030109

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 50557
    const v2, 0x7f0e0428

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/xueqiu/android/cube/CubeActivity$28;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/xueqiu/android/cube/CubeActivity$28;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50564
    const/4 v2, 0x2

    if-ne v3, v2, :cond_d

    .line 50565
    const v2, 0x7f0e0427

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02028d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50566
    const v2, 0x7f0e0426

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0700eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50571
    :cond_a
    :goto_9
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 50550
    :cond_b
    :goto_a
    return-void

    .line 50548
    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50549
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "user_cube_level"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 50567
    :cond_d
    const/4 v2, 0x3

    if-ne v3, v2, :cond_a

    .line 50568
    const v2, 0x7f0e0427

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02028e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50569
    const v2, 0x7f0e0426

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0700ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_e
    move-object v4, v2

    goto/16 :goto_8

    :cond_f
    move v2, v7

    goto/16 :goto_6
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/d;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/d;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/model/Cube;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/Rebalancing;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 164
    .line 50736
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ag:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50737
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 50759
    :cond_0
    :goto_0
    return-void

    .line 50741
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ag:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50742
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->q()V

    .line 50743
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isSellFlag()Z

    move-result v0

    if-nez v0, :cond_4

    .line 50744
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->av:Landroid/widget/TextView;

    const v1, 0x7f0700ed

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->f(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50745
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getUpdatedAt()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    .line 50746
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->aw:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50750
    :goto_1
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 50765
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 50750
    if-eqz v0, :cond_3

    .line 50751
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50752
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50758
    :goto_2
    invoke-direct {p0, p1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/model/Rebalancing;)V

    .line 50759
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ag:Landroid/widget/LinearLayout;

    .line 50766
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50767
    const v2, 0x7f0d00bb

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50768
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 50748
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->aw:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getUpdatedAt()Ljava/util/Date;

    move-result-object v1

    const-string v2, "\uff08yyyy.MM.dd HH:mm:ss\uff09"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 50754
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ay:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50755
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 50756
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 50761
    :cond_4
    const-string v0, "CubeActivity"

    const-string v1, "mCube isSellFlag  true "

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeActivity;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 164
    .line 50381
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->aj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ak:Z

    .line 50384
    :cond_0
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity;->aj:Ljava/lang/String;

    .line 50385
    iput-wide p2, p0, Lcom/xueqiu/android/cube/CubeActivity;->al:J

    .line 50387
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->w:Lcom/xueqiu/android/community/widget/i;

    .line 50389
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 50387
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setRefreshing(Z)V

    .line 164
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeActivity;Ljava/util/List;JLjava/util/Date;I)V
    .locals 14

    .prologue
    .line 164
    .line 50589
    iget v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50590
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/xueqiu/chart/view/LineChart;->setVisibility(I)V

    .line 50591
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v3, 0x7f0e0454

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50594
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 50597
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/model/NavDailyList;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/NavDailyList;->getList()Ljava/util/List;

    move-result-object v5

    .line 50598
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/model/NavDailyList;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/NavDailyList;->getList()Ljava/util/List;

    move-result-object v4

    .line 50600
    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 50601
    :cond_1
    :goto_0
    return-void

    .line 50604
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 50605
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50606
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 50607
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 50608
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/model/HistoryValue;

    .line 50609
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/HistoryValue;->getDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/HistoryValue;->getPercent()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50607
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 50612
    :cond_3
    const/4 v3, 0x0

    .line 50613
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 50615
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gtz v2, :cond_6

    :cond_4
    const/4 v2, 0x2

    move/from16 v0, p5

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    .line 50616
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gtz v2, :cond_6

    :cond_5
    const/4 v2, 0x3

    move/from16 v0, p5

    if-ne v0, v2, :cond_9

    :cond_6
    const/4 v2, 0x1

    .line 50619
    :goto_2
    if-eqz v2, :cond_a

    .line 50620
    new-instance v2, Lcom/xueqiu/chart/a/c;

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    const-string v9, "yyyy-MM-dd"

    invoke-static {v4, v9}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    invoke-direct {v2, v4, v9}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50621
    new-instance v2, Lcom/xueqiu/chart/a/c;

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    const-string v9, "yyyy-MM-dd"

    invoke-static {v4, v9}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    invoke-direct {v2, v4, v9}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50628
    :cond_7
    :goto_3
    const/4 v2, 0x1

    move v4, v2

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v4, v2, :cond_b

    .line 50629
    add-int/lit8 v2, v4, -0x1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/model/HistoryValue;

    .line 50630
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/HistoryValue;->getDate()Ljava/lang/String;

    move-result-object v9

    .line 50631
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/HistoryValue;->getPercent()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->floatValue()F

    move-result v10

    .line 50632
    new-instance v11, Lcom/xueqiu/chart/a/c;

    invoke-direct {v11, v9, v10}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    .line 50633
    iget v10, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_8

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/HistoryValue;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 50634
    iget-object v10, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    .line 50692
    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/xueqiu/chart/view/LineChart;->w:Z

    .line 50635
    new-instance v10, Lcom/xueqiu/chart/b/j;

    invoke-direct {v10}, Lcom/xueqiu/chart/b/j;-><init>()V

    .line 50636
    sget v12, Lcom/xueqiu/chart/b/k;->a:I

    .line 50694
    iput v12, v10, Lcom/xueqiu/chart/b/j;->f:I

    .line 50696
    const/4 v12, 0x4

    iput v12, v10, Lcom/xueqiu/chart/b/j;->g:I

    .line 50638
    const-string v12, "#eeae00"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 50698
    iput v12, v10, Lcom/xueqiu/chart/b/j;->i:I

    .line 50639
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/HistoryValue;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 50700
    iput-object v2, v10, Lcom/xueqiu/chart/b/j;->j:Ljava/lang/String;

    .line 50702
    iput-object v10, v11, Lcom/xueqiu/chart/a/c;->b:Lcom/xueqiu/chart/b/j;

    .line 50642
    :cond_8
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50644
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 50645
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v3, v2

    .line 50648
    :goto_5
    new-instance v10, Lcom/xueqiu/chart/a/c;

    invoke-direct {v10, v9, v3}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50628
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_4

    .line 50616
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 50623
    :cond_a
    new-instance v2, Lcom/xueqiu/chart/a/c;

    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    const-string v9, "yyyy-MM-dd"

    invoke-static {v4, v9}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    invoke-direct {v2, v4, v9}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50624
    new-instance v2, Lcom/xueqiu/chart/a/c;

    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    const-string v9, "yyyy-MM-dd"

    invoke-static {v4, v9}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    invoke-direct {v2, v4, v9}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 50651
    :cond_b
    new-instance v3, Lcom/xueqiu/chart/a/b;

    const-string v2, "\u7ec4\u5408"

    invoke-direct {v3, v2, v7}, Lcom/xueqiu/chart/a/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 50704
    const/4 v2, 0x1

    iput v2, v3, Lcom/xueqiu/chart/a/b;->c:I

    .line 50653
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/model/NavDailyList;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/NavDailyList;->getName()Ljava/lang/String;

    move-result-object v2

    .line 50654
    new-instance v4, Lcom/xueqiu/chart/a/b;

    invoke-direct {v4, v2, v6}, Lcom/xueqiu/chart/a/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 50706
    iget v2, v3, Lcom/xueqiu/chart/a/b;->c:I

    .line 50707
    iput v2, v4, Lcom/xueqiu/chart/a/b;->c:I

    .line 50656
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d0047

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 50709
    iput v2, v3, Lcom/xueqiu/chart/a/b;->b:I

    .line 50657
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d0061

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 50711
    iput v2, v4, Lcom/xueqiu/chart/a/b;->b:I

    .line 50658
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50659
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50660
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50661
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    new-instance v4, Lcom/xueqiu/chart/a/a;

    invoke-direct {v4, v2}, Lcom/xueqiu/chart/a/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/xueqiu/chart/view/LineChart;->setData(Lcom/xueqiu/chart/a/a;)V

    .line 50662
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xueqiu/chart/view/LineChart;->setReverseDrawing(Z)V

    .line 50663
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->j:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x6

    invoke-virtual {v2, v3}, Lcom/xueqiu/chart/b/g;->b(I)V

    .line 50664
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/xueqiu/chart/b/g;->c(I)V

    .line 50666
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v2

    .line 50713
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 50666
    sget v3, Lcom/xueqiu/chart/b/k;->b:I

    .line 50714
    iput v3, v2, Lcom/xueqiu/chart/b/j;->f:I

    .line 50667
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v2

    .line 50716
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 50717
    const/4 v3, 0x2

    iput v3, v2, Lcom/xueqiu/chart/b/j;->h:I

    .line 50668
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v2

    .line 50719
    const/4 v3, 0x5

    iput v3, v2, Lcom/xueqiu/chart/b/g;->h:I

    .line 50669
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v2

    sget v3, Lcom/xueqiu/chart/b/c;->c:I

    invoke-virtual {v2, v3}, Lcom/xueqiu/chart/b/g;->d(I)V

    .line 50670
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v2

    .line 50721
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/xueqiu/chart/b/d;->a:Z

    .line 50671
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v2

    .line 50723
    iget-object v2, v2, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 50671
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50672
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v2

    .line 50724
    iget-object v2, v2, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 50672
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d012a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 50673
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v2

    .line 50725
    iget-object v2, v2, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 50673
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-static {v3, v4}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50674
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v2

    .line 50726
    const/4 v3, 0x3

    iput v3, v2, Lcom/xueqiu/chart/b/d;->c:I

    .line 50675
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/chart/b/e;->d()V

    .line 50676
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/xueqiu/chart/b/e;->c(I)V

    .line 50677
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v2

    sget v3, Lcom/xueqiu/chart/b/c;->c:I

    invoke-virtual {v2, v3}, Lcom/xueqiu/chart/b/e;->d(I)V

    .line 50678
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getXGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v2

    .line 50728
    const/4 v3, 0x3

    iput v3, v2, Lcom/xueqiu/chart/b/d;->c:I

    .line 50679
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getXGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v2

    .line 50730
    const v3, 0x3d75c28f    # 0.06f

    iput v3, v2, Lcom/xueqiu/chart/b/d;->d:F

    .line 50680
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getXGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v2

    .line 50732
    const v3, 0x3df5c28f    # 0.12f

    iput v3, v2, Lcom/xueqiu/chart/b/d;->e:F

    .line 50681
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getXLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/xueqiu/chart/b/e;->c(I)V

    .line 50682
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getXLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/xueqiu/chart/b/e;->b(I)V

    .line 50683
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/cube/CubeActivity$50;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/cube/CubeActivity$50;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 50734
    iput-object v3, v2, Lcom/xueqiu/chart/b/e;->h:Lcom/xueqiu/chart/c/d;

    .line 50689
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    invoke-virtual {v2, v4, v5}, Lcom/xueqiu/chart/view/LineChart;->setMaxDraw(D)V

    .line 50690
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v2}, Lcom/xueqiu/chart/view/LineChart;->postInvalidate()V

    goto/16 :goto_0

    :cond_c
    move v2, v3

    goto/16 :goto_5
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeActivity;Z)V
    .locals 2

    .prologue
    .line 50190
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->as:Z

    if-eqz v0, :cond_0

    .line 50191
    const-string v0, "CubeActivity"

    const-string v1, "hide banner row."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->as:Z

    .line 50193
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 50194
    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$6;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 50209
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ac:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 50211
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->as:Z

    if-nez v0, :cond_1

    .line 50212
    const-string v0, "CubeActivity"

    const-string v1, "show banner row."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->as:Z

    .line 50214
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 50215
    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$7;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 50230
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ac:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 164
    :cond_1
    return-void
.end method

.method private a(Lcom/xueqiu/android/cube/d;)V
    .locals 7

    .prologue
    .line 1570
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 13180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 1571
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/xueqiu/android/cube/d;->rankParam:Ljava/lang/String;

    new-instance v6, Lcom/xueqiu/android/cube/CubeActivity$32;

    invoke-direct {v6, p0, p0, p1}, Lcom/xueqiu/android/cube/CubeActivity$32;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/cube/d;)V

    .line 14018
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/c;->b(JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1605
    :goto_0
    return-void

    .line 14180
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 1588
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/xueqiu/android/cube/d;->rankParam:Ljava/lang/String;

    new-instance v4, Lcom/xueqiu/android/cube/CubeActivity$33;

    invoke-direct {v4, p0, p0, p1}, Lcom/xueqiu/android/cube/CubeActivity$33;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/cube/d;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method private a(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 6

    .prologue
    const v5, 0x7f0e03e0

    const v4, 0x7f0e03df

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1212
    if-nez p1, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    .line 1216
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwnerId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->al:J

    .line 1217
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->b(Lcom/xueqiu/android/cube/model/Cube;)V

    .line 1218
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->j()V

    .line 10619
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_2

    .line 10622
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->c(Lcom/xueqiu/android/cube/model/Cube;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10623
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->Z:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 10624
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->Z:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$8;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10634
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->Z:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10635
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->Z:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1220
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->refresh()V

    .line 1221
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->invalidateOptionsMenu()V

    .line 1222
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 1223
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->al:J

    new-instance v4, Lcom/xueqiu/android/cube/CubeActivity$20;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/CubeActivity$20;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 11555
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 10637
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->Z:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 10638
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->Z:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10639
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->Z:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Lcom/xueqiu/android/cube/model/Rebalancing;)V
    .locals 13

    .prologue
    const v12, 0x7f0e043b

    const/4 v11, 0x1

    const v10, 0x7f0e0439

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 2825
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getRebalancingHistories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getRebalancingHistories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2826
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v0, v9, :cond_1

    .line 2827
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ag:Landroid/widget/LinearLayout;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030113

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->ag:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2899
    :cond_1
    return-void

    .line 2832
    :cond_2
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getRebalancingHistories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/RebalancingHistory;

    .line 2833
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f03010c

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->ag:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 2834
    const-string v1, "CubeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " has item : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getStockName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2835
    const v1, 0x7f0e0436

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2836
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getTargetWeight()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrevWeightAdjusted()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    .line 2837
    const v4, 0x7f020149

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2838
    const v4, 0x7f0700f0

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->f(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2843
    :goto_1
    const v1, 0x7f0e0437

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getStockName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2844
    const v1, 0x7f0e0438

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getStockSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2846
    iget v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v1, v9, :cond_5

    .line 2847
    const v1, 0x7f0700f8

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 2851
    :goto_2
    const-string v4, "%s%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrice()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "--"

    :goto_3
    aput-object v1, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2852
    const v1, 0x7f0e043a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2853
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrevWeightAdjusted()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getTargetWeight()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-nez v1, :cond_7

    .line 2854
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0702ef

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2867
    :goto_4
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/as;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2868
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2869
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/xueqiu/android/cube/CubeActivity$61;

    invoke-direct {v4, p0, v0}, Lcom/xueqiu/android/cube/CubeActivity$61;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/RebalancingHistory;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2886
    :goto_5
    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$62;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/cube/CubeActivity$62;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/RebalancingHistory;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2894
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getRebalancingHistories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getRebalancingHistories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 2895
    const v0, 0x7f0e03b0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2897
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ag:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2840
    :cond_4
    const v4, 0x7f0203c0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2841
    const v4, 0x7f0700f1

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->f(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2849
    :cond_5
    const v1, 0x7f0700ee

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 2851
    :cond_6
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrice()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 2856
    :cond_7
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCategory()Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    move-result-object v1

    sget-object v4, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->SYS_REBALANCING:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    if-ne v1, v4, :cond_8

    .line 2857
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "\u5206\u7ea2\u9001\u914d"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2858
    :cond_8
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCategory()Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    move-result-object v1

    sget-object v4, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    if-eq v1, v4, :cond_9

    .line 2859
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCategory()Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    move-result-object v1

    sget-object v4, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->USER_VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    if-eq v1, v4, :cond_9

    .line 2860
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCategory()Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    move-result-object v1

    sget-object v4, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->SYS_VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    if-ne v1, v4, :cond_a

    .line 2861
    :cond_9
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "%.0f\u80a1 --> %.0f\u80a1"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrevVolume()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getTargetVolume()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2863
    :cond_a
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "%s%% --> %s%%"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrevWeightAdjusted()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getTargetWeight()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2883
    :cond_b
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 1877
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1878
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1879
    if-eqz p2, :cond_0

    .line 1880
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1882
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1883
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1884
    const/4 v2, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1885
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1886
    const v2, 0x7f0200b5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1887
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1888
    invoke-virtual {v1, v2, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1889
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1890
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1891
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1892
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->aj:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/widget/Button;ZI)V
    .locals 3

    .prologue
    const v2, 0x7f0d0148

    const v1, 0x7f0d006b

    .line 1967
    if-nez p0, :cond_0

    .line 1996
    :goto_0
    return-void

    .line 1971
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1972
    if-eqz p1, :cond_1

    .line 1973
    const v0, 0x7f0202ea

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1974
    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 1976
    :cond_1
    const v0, 0x7f0202e9

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1977
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 1979
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 1980
    if-eqz p1, :cond_3

    .line 1981
    const v0, 0x7f02031e

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1982
    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 1984
    :cond_3
    const v0, 0x7f02031d

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1985
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 1988
    :cond_4
    if-eqz p1, :cond_5

    .line 1989
    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1990
    const v0, 0x7f02038a

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1992
    :cond_5
    const v0, 0x7f020389

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1993
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private static b(Landroid/widget/TextView;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 1121
    if-eqz p1, :cond_0

    .line 1122
    const v0, 0x7f0203bf

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1126
    :goto_0
    invoke-virtual {p0, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1127
    return-void

    .line 1124
    :cond_0
    const v0, 0x7f020460

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeActivity;I)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/xueqiu/android/cube/CubeActivity;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/d;)V
    .locals 10

    .prologue
    const v9, 0x7f0e03cb

    const v8, 0x7f0e03c9

    const/16 v4, 0x8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 164
    .line 50270
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->E:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/xueqiu/android/cube/d;->rankName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50273
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50274
    :cond_0
    iget-object v0, p1, Lcom/xueqiu/android/cube/d;->a:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p1, Lcom/xueqiu/android/cube/d;->a:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_5

    .line 50275
    :cond_1
    invoke-virtual {p0, v8}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50276
    invoke-virtual {p0, v9}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50277
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->F:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/xueqiu/android/cube/d;->a:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v2, v6

    if-gtz v0, :cond_4

    const v0, 0x7f070432

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 50288
    :cond_2
    :goto_1
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->an:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->an:I

    .line 50289
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->an:I

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 50290
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->an:I

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->an:I

    .line 164
    :cond_3
    return-void

    .line 50277
    :cond_4
    const v0, 0x7f070449

    goto :goto_0

    .line 50279
    :cond_5
    invoke-virtual {p0, v8}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 50280
    invoke-virtual {p0, v9}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 50282
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 50283
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 50284
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->F:Landroid/widget/TextView;

    const-string v2, "%s%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/xueqiu/android/cube/d;->a:Ljava/lang/Double;

    invoke-virtual {v0, v4}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/xueqiu/android/cube/CubeActivity;->b(Lcom/xueqiu/android/cube/model/Cube;)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeActivity;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50233
    new-array v0, v7, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 50234
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "%d_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getLastRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Rebalancing;->getUpdatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 50248
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 50235
    new-instance v3, Lcom/xueqiu/android/cube/CubeActivity$40;

    invoke-direct {v3, p0, p0, v0, v1}, Lcom/xueqiu/android/cube/CubeActivity$40;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/xueqiu/android/base/b/ai;->a([Ljava/lang/String;[Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 164
    return-void
.end method

.method private b(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1261
    const-string v0, "cube_rank_config"

    invoke-static {p0, v0, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1262
    const-string v2, "rank_param"

    invoke-static {p0, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12241
    const-string v0, "cube_rank_config_update"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 12242
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    const/4 v4, -0x1

    const-string v5, "all"

    new-instance v6, Lcom/xueqiu/android/cube/CubeActivity$21;

    invoke-direct {v6, p0, v2, v3}, Lcom/xueqiu/android/cube/CubeActivity$21;-><init>(Lcom/xueqiu/android/cube/CubeActivity;J)V

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(JILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1267
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1273
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1275
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "sp_"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/as;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1277
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1281
    :goto_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1282
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 1283
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "filter_values"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1284
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/cube/CubeActivity$22;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/CubeActivity$22;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 1285
    invoke-virtual {v4}, Lcom/xueqiu/android/cube/CubeActivity$22;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1284
    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    .line 1287
    if-eqz v2, :cond_2

    .line 1288
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1289
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/d;

    iget-object v0, v0, Lcom/xueqiu/android/cube/d;->rankParam:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1290
    iput v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->an:I

    .line 1295
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    iget v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->an:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/d;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/d;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1279
    :cond_3
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1288
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/CubeActivity;)J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->al:J

    return-wide v0
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/model/Cube;
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    return-object p1
.end method

.method private c(I)V
    .locals 17

    .prologue
    .line 2089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2091
    const-wide/16 v6, 0x0

    .line 2093
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 2094
    const-wide v2, 0x757b12c00L

    sub-long v6, v14, v2

    .line 2103
    :cond_0
    :goto_0
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 2105
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 33180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 2106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Lcom/xueqiu/android/cube/CubeActivity$48;

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/xueqiu/android/cube/CubeActivity$48;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;JLjava/util/Date;I)V

    .line 33434
    iget-object v4, v2, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    move-object v5, v10

    move-wide v8, v14

    move-object v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2132
    :goto_1
    return-void

    .line 2095
    :cond_1
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 2096
    const-wide v2, 0x1cf7c5800L

    sub-long v6, v14, v2

    goto :goto_0

    .line 2097
    :cond_2
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 2098
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 34180
    :cond_3
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 2119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Lcom/xueqiu/android/cube/CubeActivity$49;

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/xueqiu/android/cube/CubeActivity$49;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;JLjava/util/Date;I)V

    .line 34438
    iget-object v9, v2, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-static {v10}, Lcom/xueqiu/android/base/util/as;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-wide v12, v6

    move-object/from16 v16, v3

    invoke-virtual/range {v9 .. v16}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_1
.end method

.method private static c(Lcom/xueqiu/android/cube/model/Cube;)Z
    .locals 2

    .prologue
    .line 2988
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2989
    const/4 v0, 0x1

    .line 2991
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/community/widget/i;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->w:Lcom/xueqiu/android/community/widget/i;

    return-object v0
.end method

.method private d(I)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2494
    iput p1, p0, Lcom/xueqiu/android/cube/CubeActivity;->q:I

    .line 44515
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    .line 44519
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 44520
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/p/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44521
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    .line 45069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 45077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v6

    .line 44521
    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    move v0, v1

    .line 44524
    :goto_0
    if-eqz v0, :cond_2

    .line 44525
    const v0, 0x7f0700c8

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v5}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v5}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%.2f%%"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Cube;->getTotalGain()Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-virtual {p0, v0, v4}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44531
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44533
    if-ne p1, v9, :cond_3

    .line 45552
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070415

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07042f

    const/4 v2, 0x0

    .line 45553
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070446

    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$54;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeActivity$54;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 45554
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 45587
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 44534
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 44521
    goto :goto_0

    .line 44527
    :cond_2
    const v0, 0x7f0700f3

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v5}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v5}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%.2f%%"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Cube;->getTotalGain()Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-virtual {p0, v0, v4}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 44536
    :cond_3
    new-instance v1, Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v1}, Lcom/xueqiu/android/common/widget/an;-><init>()V

    .line 46113
    iput-object v0, v1, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 47075
    iget-object v2, v1, Lcom/xueqiu/android/common/widget/an;->l:Ljava/util/Map;

    .line 44538
    const-string v4, "wx_content_type"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48075
    iget-object v2, v1, Lcom/xueqiu/android/common/widget/an;->l:Ljava/util/Map;

    .line 44539
    const-string v4, "wx_friend_content"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49065
    iget-object v2, v1, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 44540
    const-string v4, "wx_title"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49129
    iput-object v3, v1, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 49145
    iput v8, v1, Lcom/xueqiu/android/common/widget/an;->i:I

    .line 44545
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/common/widget/an;->h:Ljava/lang/String;

    .line 44546
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02006e

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50101
    iput-object v0, v1, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 44547
    invoke-static {p0, v1, p0}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/am;)Lcom/xueqiu/android/common/widget/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->r:Lcom/xueqiu/android/common/widget/aj;

    goto :goto_2
.end method

.method static synthetic e(Lcom/xueqiu/android/cube/CubeActivity;)Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ak:Z

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/cube/CubeActivity;)Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ak:Z

    return v0
.end method

.method static synthetic g(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ab:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->X:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/cube/CubeActivity;)I
    .locals 3

    .prologue
    .line 164
    .line 50123
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 50128
    iget-object v1, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v1}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v1

    .line 50123
    invoke-virtual {v1}, Landroid/support/v7/a/a;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 50124
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 50126
    const/high16 v1, 0x424c0000    # 51.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit16 v0, v0, 0xcc

    .line 164
    return v0
.end method

.method static synthetic j(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ai:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private j()V
    .locals 15

    .prologue
    const v14, 0x7f0702fc

    const v13, 0x7f070191

    const v12, 0x7f07012e

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 608
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    .line 6252
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 609
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v0, v4, :cond_b

    .line 6740
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 6743
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_9

    .line 6744
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7734
    sget-object v0, Lcom/xueqiu/android/common/model/GuideTutorialType;->CUBE_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/GuideTutorialType;->storeKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7735
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7736
    sget-object v0, Lcom/xueqiu/android/common/model/GuideTutorialType;->CUBE_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/GuideTutorialType;->storeKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v11}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7737
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/GuideTutorialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7738
    const-string v1, "extra_which_view"

    sget-object v2, Lcom/xueqiu/android/common/model/GuideTutorialType;->CUBE_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 7739
    const-string v1, "extra_view_click_position"

    new-array v2, v4, [I

    const v3, 0x7f0e03bb

    aput v3, v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 7740
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->startActivity(Landroid/content/Intent;)V

    .line 7741
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->overridePendingTransition(II)V

    .line 6746
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0011

    const v2, 0x7f0703f5

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const v5, 0x7f0200c2

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 6748
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    .line 8069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 8077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 6748
    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 6749
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0005

    invoke-virtual {v6, v11, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v1, v14, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 6750
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6751
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e000c

    const/4 v2, 0x3

    invoke-virtual {v6, v2, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v1, v13, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 6753
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0015

    const v2, 0x7f070376

    invoke-virtual {v6, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 6792
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$10;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->setOnMenuItemSelectedListener(Lcom/xueqiu/android/common/widget/j;)V

    .line 614
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->invalidate()V

    .line 615
    return-void

    .line 6756
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6757
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const/high16 v1, 0x7f0e0000

    const v2, 0x7f0702da

    const/4 v3, 0x3

    invoke-virtual {v6, v3, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 6758
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0015

    const v2, 0x7f070376

    invoke-virtual {v6, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 6759
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0010

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(II)Lcom/xueqiu/android/common/widget/i;

    move-result-object v0

    .line 6760
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6761
    const v1, 0x7f0e000c

    invoke-virtual {p0, v13}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 6763
    :cond_6
    const v1, 0x7f0e0005

    invoke-virtual {p0, v14}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 6764
    const v1, 0x7f0e0009

    invoke-virtual {p0, v12}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 6765
    const v1, 0x7f0e0004

    const v2, 0x7f07008c

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    goto :goto_0

    .line 6767
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const/high16 v1, 0x7f0e0000

    const v2, 0x7f0702da

    const/4 v3, 0x3

    invoke-virtual {v6, v3, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 6768
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0015

    const v2, 0x7f070376

    invoke-virtual {v6, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 6769
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0005

    invoke-virtual {v6, v11, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v1, v14, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 6770
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0010

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(II)Lcom/xueqiu/android/common/widget/i;

    move-result-object v0

    .line 6771
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6772
    const v1, 0x7f0e0009

    invoke-virtual {p0, v12}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 6773
    const v1, 0x7f0e000c

    invoke-virtual {p0, v13}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 6774
    const v1, 0x7f0e0004

    const v2, 0x7f07008c

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    goto/16 :goto_0

    .line 6776
    :cond_8
    const v1, 0x7f0e0009

    invoke-virtual {p0, v12}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 6777
    const v1, 0x7f0e0004

    const v2, 0x7f07008c

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    goto/16 :goto_0

    .line 6782
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0005

    invoke-virtual {v6, v11, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v1, v14, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 6783
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0015

    const v2, 0x7f070376

    invoke-virtual {v6, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 6784
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    .line 9069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 9077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 6784
    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 6785
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e0009

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 6787
    :cond_a
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6788
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f0e000c

    const/4 v2, 0x3

    invoke-virtual {v6, v2, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v1, v13, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    goto/16 :goto_0

    .line 9645
    :cond_b
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9648
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 9651
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    .line 10069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 10077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v6

    .line 9651
    cmp-long v0, v2, v6

    if-eqz v0, :cond_d

    .line 9652
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v2, 0x7f0e0005

    invoke-virtual {v1, v11, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v2, v14, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 9653
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v2, 0x7f0e0015

    const v3, 0x7f070376

    invoke-virtual {v1, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 9654
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 9655
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v2, 0x7f0e000c

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v2, v13, v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 9676
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$9;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->setOnMenuItemSelectedListener(Lcom/xueqiu/android/common/widget/j;)V

    goto/16 :goto_1

    .line 9658
    :cond_d
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_e

    move v0, v4

    .line 9659
    :goto_3
    if-eqz v0, :cond_f

    const v10, 0x7f0d0014

    .line 9660
    :goto_4
    iget-object v5, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v6, 0x7f0e0011

    const v2, 0x7f0702da

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    if-nez v0, :cond_10

    move v9, v4

    :goto_5
    invoke-virtual/range {v5 .. v10}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 9661
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v2, 0x7f0e0005

    invoke-virtual {v1, v11, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v2, v14, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 9662
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v2, 0x7f0e0015

    const v3, 0x7f070376

    invoke-virtual {v1, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(III)V

    .line 9663
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v2, 0x7f0e0010

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(II)Lcom/xueqiu/android/common/widget/i;

    move-result-object v0

    .line 9664
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 9665
    const v1, 0x7f0e000c

    invoke-virtual {p0, v13}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 9666
    const v1, 0x7f0e0009

    invoke-virtual {p0, v12}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 9671
    :goto_6
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_c

    .line 9672
    const v1, 0x7f0e0004

    const v2, 0x7f07008d

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    goto/16 :goto_2

    :cond_e
    move v0, v11

    .line 9658
    goto :goto_3

    .line 9659
    :cond_f
    const v10, 0x7f0200c2

    goto :goto_4

    :cond_10
    move v9, v11

    .line 9660
    goto :goto_5

    .line 9668
    :cond_11
    const v1, 0x7f0e0009

    invoke-virtual {p0, v12}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    goto :goto_6

    .line 6740
    :array_0
    .array-data 4
        0x7f0100b6
        0x7f0100bc
        0x7f0100b8
        0x7f0100b9
    .end array-data

    .line 9648
    :array_1
    .array-data 4
        0x7f0100b6
        0x7f0100bc
        0x7f0100b8
        0x7f0100b9
    .end array-data
.end method

.method private k()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1088
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1089
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0e036d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1093
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070254

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1094
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07002c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1095
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/xueqiu/android/cube/CubeActivity;->b(Landroid/widget/TextView;Z)V

    .line 1096
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->b(Landroid/widget/TextView;Z)V

    .line 1098
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$17;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/cube/CubeActivity$17;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$18;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/cube/CubeActivity$18;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1118
    return-void
.end method

.method static synthetic k(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 50148
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 50149
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 50129
    if-eqz v0, :cond_1

    .line 50150
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 50131
    :cond_0
    :goto_0
    return-void

    .line 50134
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    .line 50137
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50138
    const-string v1, "extra_cube"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50139
    const-string v1, "extra_readonly"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50140
    iget v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v1, v4, :cond_2

    .line 50141
    const-string v1, "extra_page_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50143
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/xueqiu/android/cube/CubeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50144
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x579

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 50145
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50152
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 50146
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/xueqiu/android/cube/CubeActivity;)I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    return v0
.end method

.method private l()V
    .locals 12

    .prologue
    const/16 v11, 0x11

    const/16 v2, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1709
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 32066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 1710
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/a/a;->b(Ljava/lang/CharSequence;)V

    .line 1711
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getFollowerCount()I

    move-result v4

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOrderTicketCount()Ljava/lang/Integer;

    move-result-object v5

    .line 32592
    if-eqz v5, :cond_2

    .line 32593
    const-string v0, "%d \u6b21\u4e0b\u5355   %d \u4eba\u5173\u6ce8"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32594
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 32595
    iget-object v7, p0, Lcom/xueqiu/android/cube/CubeActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 32596
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v0, v1, v8, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 32597
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 32598
    invoke-static {p0}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v7

    .line 32599
    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_0

    .line 32600
    const-string v0, "%d \u4eba\u5173\u6ce8%n%d \u6b21\u4e0b\u5355"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    aput-object v5, v6, v9

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1711
    :cond_0
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1712
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->z:Landroid/widget/TextView;

    const-string v3, "%.2f%%"

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getDailyGain()Ljava/lang/Double;

    move-result-object v4

    const-string v5, "--"

    invoke-static {v3, v4, v5}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1713
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->A:Landroid/widget/TextView;

    const-string v3, "%.2f%%"

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getMonthlyGain()Ljava/lang/Double;

    move-result-object v4

    const-string v5, "--"

    invoke-static {v3, v4, v5}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1714
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->B:Landroid/widget/TextView;

    const-string v3, "%.4f"

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getNetValue()Ljava/lang/Double;

    move-result-object v4

    const-string v5, "--"

    invoke-static {v3, v4, v5}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1715
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->C:Landroid/widget/TextView;

    const-string v3, "%.2f"

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getTotalGain()Ljava/lang/Double;

    move-result-object v4

    const-string v5, "--"

    invoke-static {v3, v4, v5}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1716
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/cube/model/Market;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/Market;

    move-result-object v0

    .line 1717
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->Y:Landroid/widget/TextView;

    sget-object v4, Lcom/xueqiu/android/cube/model/Market;->US:Lcom/xueqiu/android/cube/model/Market;

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1719
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    const-string v3, "\uff08\u521b\u5efa\u4e8eyyyy-MM-dd\uff09"

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1720
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6536\u76ca\u7387\u8d70\u52bf"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1721
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0xc

    invoke-direct {v4, v5, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 1722
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#aaaaaa"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1723
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v3, v4, v6, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1724
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v5, v0, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1725
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1727
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1728
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1731
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v0, v10, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getUpdatedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32743
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v2, 0x7f0e044f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 32744
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v3, 0x7f0e0451

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32745
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32746
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32747
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getUpdatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32748
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e0450

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$38;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$38;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1740
    :cond_1
    :goto_2
    return-void

    .line 32603
    :cond_2
    const-string v0, "%d \u4eba\u5173\u6ce8"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 1717
    goto/16 :goto_1

    .line 1735
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1736
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1737
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1738
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->U:Landroid/widget/TextView;

    const-string v3, "\u5173\u505c\u65e5\u671f%n%s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v5}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private m()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1864
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1866
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/cube/model/Market;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/Market;

    move-result-object v1

    .line 1867
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Market;->description()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Ljava/lang/String;Z)V

    .line 1869
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getTag()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getTag()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v0

    .line 1870
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getTag()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getTag()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->a(Ljava/lang/String;Z)V

    .line 1870
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1874
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 3

    .prologue
    .line 164
    .line 50153
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50155
    const-string v1, "extra_cube_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50156
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->startActivity(Landroid/content/Intent;)V

    .line 50157
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x579

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 50158
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50162
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 50159
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 164
    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2240
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2241
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->M:Lcom/xueqiu/chart/view/PieChart;

    invoke-virtual {v0, v2}, Lcom/xueqiu/chart/view/PieChart;->setVisibility(I)V

    .line 2242
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2243
    return-void
.end method

.method static synthetic n(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 4

    .prologue
    .line 164
    .line 50163
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    .line 50166
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50167
    iget v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 50168
    const-string v1, "extra_cube_id"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50173
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->startActivity(Landroid/content/Intent;)V

    .line 50174
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x579

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 50175
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50178
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 50176
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 164
    :cond_0
    return-void

    .line 50170
    :cond_1
    const-string v1, "extra_page_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50171
    const-string v1, "extra_cube_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private o()V
    .locals 10

    .prologue
    .line 2246
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2247
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->n()V

    .line 2250
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    .line 2251
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    .line 2252
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getHoldings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2360
    :cond_1
    :goto_0
    return-void

    .line 2256
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v3

    .line 2259
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCash()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->getHoldings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 2260
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->n()V

    .line 2261
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u8d44\u4ea7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2264
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/cube/model/Market;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/Market;

    move-result-object v0

    .line 2265
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Market;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2266
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->P:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2270
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2271
    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->getHoldings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 2272
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/model/Holding;

    .line 2273
    if-nez v1, :cond_5

    .line 2274
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->copy()Lcom/xueqiu/android/cube/model/Holding;

    move-result-object v0

    .line 2275
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2268
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->P:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2277
    :cond_5
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Lcom/xueqiu/android/cube/model/Holding;->setWeight(D)V

    goto :goto_2

    .line 2280
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2281
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2282
    new-instance v0, Lcom/xueqiu/android/cube/CubeActivity$51;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/CubeActivity$51;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2294
    const/4 v0, 0x0

    .line 2295
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 2296
    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 2297
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 2298
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2299
    new-instance v7, Lcom/xueqiu/chart/a/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    invoke-direct {v7, v8}, Lcom/xueqiu/chart/a/c;-><init>(F)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2300
    new-instance v7, Lcom/xueqiu/chart/a/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/xueqiu/chart/a/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 2301
    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->getStatus()Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    move-result-object v6

    sget-object v8, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->SUCCESS:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    if-eq v6, v8, :cond_8

    .line 2302
    sget-object v0, Lcom/xueqiu/android/cube/CubeActivity;->au:[I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sget-object v8, Lcom/xueqiu/android/cube/CubeActivity;->au:[I

    array-length v8, v8

    rem-int/2addr v6, v8

    aget v0, v0, v6

    .line 35051
    iput v0, v7, Lcom/xueqiu/chart/a/b;->b:I

    .line 2306
    :goto_4
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2308
    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCash()D

    move-result-wide v6

    const-wide v8, 0x3f747ae140000000L    # 0.004999999888241291

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_13

    if-nez v1, :cond_13

    .line 2309
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v2, v0, :cond_7

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCash()D

    move-result-wide v6

    add-int/lit8 v0, v2, 0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v8

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_13

    .line 2310
    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2311
    new-instance v0, Lcom/xueqiu/chart/a/c;

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCash()D

    move-result-wide v8

    double-to-float v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-direct {v0, v7}, Lcom/xueqiu/chart/a/c;-><init>(F)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2312
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_9

    .line 2313
    new-instance v0, Lcom/xueqiu/chart/a/b;

    const-string v7, "\u73b0\u91d1\u7b49\u8d44\u4ea7"

    invoke-direct {v0, v7, v6}, Lcom/xueqiu/chart/a/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 2317
    :goto_5
    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->getStatus()Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    move-result-object v6

    sget-object v7, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->SUCCESS:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    if-eq v6, v7, :cond_a

    .line 2318
    sget-object v6, Lcom/xueqiu/android/cube/CubeActivity;->au:[I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sget-object v8, Lcom/xueqiu/android/cube/CubeActivity;->au:[I

    array-length v8, v8

    rem-int/2addr v7, v8

    aget v6, v6, v7

    .line 37051
    iput v6, v0, Lcom/xueqiu/chart/a/b;->b:I

    .line 2322
    :goto_6
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2323
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 2296
    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto/16 :goto_3

    .line 2304
    :cond_8
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 36051
    iput v0, v7, Lcom/xueqiu/chart/a/b;->b:I

    goto :goto_4

    .line 2315
    :cond_9
    new-instance v0, Lcom/xueqiu/chart/a/b;

    const-string v7, "\u73b0\u91d1"

    invoke-direct {v0, v7, v6}, Lcom/xueqiu/chart/a/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_5

    .line 2320
    :cond_a
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d00e0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 38051
    iput v6, v0, Lcom/xueqiu/chart/a/b;->b:I

    goto :goto_6

    .line 2327
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2328
    new-instance v1, Lcom/xueqiu/chart/a/c;

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCash()D

    move-result-wide v6

    double-to-float v2, v6

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v2, v5

    invoke-direct {v1, v2}, Lcom/xueqiu/chart/a/c;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2329
    new-instance v1, Lcom/xueqiu/chart/a/b;

    const-string v2, "\u73b0\u91d1"

    invoke-direct {v1, v2, v0}, Lcom/xueqiu/chart/a/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 2330
    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Rebalancing;->getStatus()Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    move-result-object v0

    sget-object v2, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->SUCCESS:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    if-eq v0, v2, :cond_12

    .line 2331
    sget-object v0, Lcom/xueqiu/android/cube/CubeActivity;->au:[I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/xueqiu/android/cube/CubeActivity;->au:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    aget v0, v0, v2

    .line 39051
    iput v0, v1, Lcom/xueqiu/chart/a/b;->b:I

    .line 2335
    :goto_8
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2337
    :cond_c
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->M:Lcom/xueqiu/chart/view/PieChart;

    new-instance v1, Lcom/xueqiu/chart/a/a;

    invoke-direct {v1, v4}, Lcom/xueqiu/chart/a/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/view/PieChart;->setData(Lcom/xueqiu/chart/a/a;)V

    .line 2338
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->M:Lcom/xueqiu/chart/view/PieChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/PieChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    sget v1, Lcom/xueqiu/chart/b/i;->b:I

    .line 40065
    iput v1, v0, Lcom/xueqiu/chart/b/g;->k:I

    .line 2339
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->M:Lcom/xueqiu/chart/view/PieChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/PieChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    sget v1, Lcom/xueqiu/chart/b/h;->b:I

    .line 40073
    iput v1, v0, Lcom/xueqiu/chart/b/g;->l:I

    .line 2340
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->M:Lcom/xueqiu/chart/view/PieChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/PieChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    .line 41057
    const/16 v1, 0xa

    iput v1, v0, Lcom/xueqiu/chart/b/g;->i:I

    .line 2341
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->M:Lcom/xueqiu/chart/view/PieChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/PieChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    .line 41097
    const/4 v1, 0x5

    iput v1, v0, Lcom/xueqiu/chart/b/g;->m:I

    .line 2342
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->M:Lcom/xueqiu/chart/view/PieChart;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/view/PieChart;->setHolePercent(F)V

    .line 2343
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->M:Lcom/xueqiu/chart/view/PieChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/PieChart;->invalidate()V

    .line 2344
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getPerformance()Lcom/xueqiu/android/cube/model/Performance;

    move-result-object v0

    .line 2345
    if-eqz v0, :cond_11

    .line 2346
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Performance;->getTopGainerName()Ljava/lang/String;

    move-result-object v1

    .line 2347
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Performance;->getGainCount()I

    move-result v2

    .line 2348
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Performance;->getLossCount()I

    move-result v0

    add-int/2addr v0, v2

    .line 2349
    if-nez v1, :cond_d

    if-lez v0, :cond_11

    .line 2350
    :cond_d
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->O:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2351
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->O:Landroid/widget/TextView;

    .line 41371
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 41373
    if-lez v0, :cond_e

    .line 41374
    const-string v5, "\u6700\u8fd1\u4e09\u6708\u8c03\u4ed3 "

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 41375
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 41376
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 41377
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const-string v7, "#ff7700"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 41378
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x11

    .line 41377
    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 41379
    const-string v5, " \u6b21\uff0c"

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 41380
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 41381
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 41382
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#ff7700"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 41383
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x11

    .line 41382
    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 41384
    const-string v2, " \u6b21\u8d5a\u4e86\u94b1"

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 41387
    :cond_e
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/cube/model/Market;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/Market;

    move-result-object v2

    .line 41388
    if-eqz v1, :cond_10

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Market;->isCN()Z

    move-result v2

    if-nez v2, :cond_10

    .line 41389
    if-lez v0, :cond_f

    .line 41390
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 41392
    :cond_f
    const-string v0, "\u6700\u8d5a\u94b1\u80a1\u7968 "

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 41393
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 41394
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 41395
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ff7700"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 41396
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v5, 0x11

    .line 41395
    invoke-virtual {v4, v1, v0, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2351
    :cond_10
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2354
    :cond_11
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2356
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2357
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->P:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2358
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->O:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2333
    :cond_12
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d00e0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 40051
    iput v0, v1, Lcom/xueqiu/chart/a/b;->b:I

    goto/16 :goto_8

    :cond_13
    move v0, v1

    goto/16 :goto_7
.end method

.method static synthetic o(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 3

    .prologue
    .line 164
    .line 50179
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50181
    const-string v1, "extra_cube_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50182
    const-string v1, "extra_cube_unit_value"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getNetValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 50183
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->startActivity(Landroid/content/Intent;)V

    .line 50184
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x579

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 50185
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50189
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 50186
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 164
    :cond_0
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    const/16 v2, 0x579

    .line 2451
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2452
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xb

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 2453
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 2454
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 2461
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$53;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$53;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 44025
    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2}, Lcom/xueqiu/android/base/util/f;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/g;Z)V

    .line 2488
    return-void

    .line 2456
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xa

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 2457
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 2458
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 164
    .line 50249
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_1

    .line 50252
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50253
    const-string v1, "extra_id"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50254
    const-string v1, "extra_sell_flag"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->isSellFlag()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50255
    iget v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v1, v4, :cond_0

    .line 50256
    const-string v1, "extra_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50257
    const-string v1, "extra_page_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50259
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->startActivity(Landroid/content/Intent;)V

    .line 164
    :cond_1
    return-void
.end method

.method private q()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x1

    const v6, 0x7f080098

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 2904
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ag:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2906
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2907
    const v1, 0x7f0d00bb

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2908
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ag:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, 0x1

    invoke-direct {v2, v7, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2911
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2912
    invoke-static {v6}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 2913
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeActivity;->c(Lcom/xueqiu/android/cube/model/Cube;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2914
    const v2, 0x7f020107

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2915
    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$63;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeActivity$63;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2922
    :cond_0
    invoke-virtual {v0, v5, v1, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2923
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2924
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ag:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2925
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->av:Landroid/widget/TextView;

    .line 2926
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->av:Landroid/widget/TextView;

    const v2, 0x7f0d011e

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2927
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->av:Landroid/widget/TextView;

    const v2, 0x7f080037

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2928
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2929
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2930
    invoke-static {v6}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2931
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->av:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2933
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->aw:Landroid/widget/TextView;

    .line 2934
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->aw:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2935
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->aw:Landroid/widget/TextView;

    const v2, 0x7f0d007d

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2936
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->aw:Landroid/widget/TextView;

    const v2, 0x7f080034

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2937
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2938
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2939
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->aw:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2941
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeActivity;->c(Lcom/xueqiu/android/cube/model/Cube;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2942
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2943
    const v2, 0x7f0d007d

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2944
    const v2, 0x7f080033

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2945
    iget v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2946
    const v2, 0x7f0702d8

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2950
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2951
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2952
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2955
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2956
    const v2, 0x7f020074

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2957
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2958
    const/16 v3, 0x15

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2959
    invoke-static {v6}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2960
    invoke-static {v6}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2961
    const v3, 0x7f080032

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2962
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2965
    :cond_1
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ay:Landroid/view/View;

    .line 2966
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ay:Landroid/view/View;

    const v1, 0x7f0d0024

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2967
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2968
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ag:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ay:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, 0x1

    invoke-direct {v2, v7, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2971
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ax:Landroid/widget/TextView;

    .line 2972
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ax:Landroid/widget/TextView;

    const v1, 0x7f0d007c

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2973
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ax:Landroid/widget/TextView;

    const v1, 0x7f080036

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2974
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ax:Landroid/widget/TextView;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2975
    const v0, 0x7f080038

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v0

    .line 2976
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ax:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2977
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ax:Landroid/widget/TextView;

    const v1, 0x7f020186

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2980
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2981
    invoke-static {v6}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2982
    invoke-static {v6}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2983
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ag:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->ax:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2985
    return-void

    .line 2948
    :cond_2
    const v2, 0x7f0700ef

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic q(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 164
    .line 50261
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_1

    .line 50264
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/xueqiu/android/cube/RebalanceActivity;

    const-string v2, "extra_cube"

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 50265
    iget v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v1, v4, :cond_0

    .line 50266
    const-string v1, "extra_page_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50268
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    :cond_1
    return-void
.end method

.method static synthetic r(Lcom/xueqiu/android/cube/CubeActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    return-object v0
.end method

.method private refresh()V
    .locals 11

    .prologue
    const v10, 0x7f020488

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1662
    .line 17308
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v0, v7, :cond_5

    .line 17309
    new-instance v0, Lcom/xueqiu/android/cube/CubeActivity$24;

    invoke-direct {v0, p0, p0}, Lcom/xueqiu/android/cube/CubeActivity$24;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 18180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 17327
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    .line 19026
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/base/b/c;->h(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1663
    :goto_0
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->l()V

    .line 1664
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getLastRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getLastRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    .line 20069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 20077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 19762
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getOwnerId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 19765
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 19767
    new-instance v3, Lcom/xueqiu/android/cube/CubeActivity$39;

    invoke-direct {v3, p0, p0, v0}, Lcom/xueqiu/android/cube/CubeActivity$39;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/cube/model/Rebalancing;)V

    .line 21139
    iget-object v0, v2, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v1, v3}, Lcom/xueqiu/android/base/b/an;->a(Ljava/util/List;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1667
    :cond_0
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->m()V

    .line 21895
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21898
    new-instance v0, Lcom/d/a/b/e;

    invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V

    .line 22293
    iput v10, v0, Lcom/d/a/b/e;->c:I

    .line 23270
    iput v10, v0, Lcom/d/a/b/e;->b:I

    .line 24248
    iput v10, v0, Lcom/d/a/b/e;->a:I

    .line 24367
    iput-boolean v7, v0, Lcom/d/a/b/e;->i:Z

    .line 25341
    iput-boolean v7, v0, Lcom/d/a/b/e;->h:Z

    .line 21903
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x41c80000    # 25.0f

    .line 21904
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 25445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 21905
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    .line 21910
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 21912
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->K:Landroid/widget/ImageView;

    new-instance v4, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v4}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 21913
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    .line 21914
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21915
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/community/model/UserVerifyType;->ADVISER:Lcom/xueqiu/android/community/model/UserVerifyType;

    if-ne v0, v1, :cond_6

    .line 21916
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->J:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 21920
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 21921
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 21922
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    .line 26069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 26077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 21922
    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 21923
    const v0, 0x7f070452

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21928
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21929
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->K:Landroid/widget/ImageView;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$41;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$41;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21936
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getContractor()Lcom/xueqiu/android/cube/model/Contractor;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    .line 21937
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getContractor()Lcom/xueqiu/android/cube/model/Contractor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Contractor;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 21938
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getContractor()Lcom/xueqiu/android/cube/model/Contractor;

    move-result-object v0

    .line 21939
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->I:Landroid/widget/TextView;

    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$42;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeActivity$42;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21945
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Contractor;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21946
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Contractor;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xueqiu/android/base/util/n;->b()Lcom/d/a/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/cube/CubeActivity$43;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/cube/CubeActivity$43;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 21955
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21960
    :goto_3
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v0, v8, :cond_3

    .line 21961
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->J:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1669
    :cond_3
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->o()V

    .line 27004
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ah:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 27005
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ah:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/view/LineChart;->removeView(Landroid/view/View;)V

    .line 27008
    :cond_4
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ah:Landroid/widget/LinearLayout;

    .line 27009
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ah:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 27010
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ah:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 27011
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ah:Landroid/widget/LinearLayout;

    const v1, 0x7f020160

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27013
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ea

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->ah:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->j:Landroid/widget/Button;

    .line 27014
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->j:Landroid/widget/Button;

    const v1, 0x7f0700cf

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 27015
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->j:Landroid/widget/Button;

    const v1, 0x7f0202e8

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 27016
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->j:Landroid/widget/Button;

    invoke-static {}, Lcom/xueqiu/android/base/r;->b()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 27017
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->j:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$44;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$44;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27031
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ea

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->ah:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->k:Landroid/widget/Button;

    .line 27032
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->k:Landroid/widget/Button;

    const v1, 0x7f0700ce

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 27033
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->k:Landroid/widget/Button;

    const v1, 0x7f02031c

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 27034
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->k:Landroid/widget/Button;

    invoke-static {}, Lcom/xueqiu/android/base/r;->b()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 27035
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->k:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$46;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$46;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27049
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ea

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->ah:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->p:Landroid/widget/Button;

    .line 27050
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->p:Landroid/widget/Button;

    const v1, 0x7f0700cd

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 27051
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->p:Landroid/widget/Button;

    const v1, 0x7f020388

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 27052
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->p:Landroid/widget/Button;

    invoke-static {}, Lcom/xueqiu/android/base/r;->b()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 27053
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$47;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$47;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27067
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->j:Landroid/widget/Button;

    invoke-static {v0, v7, v8}, Lcom/xueqiu/android/cube/CubeActivity;->b(Landroid/widget/Button;ZI)V

    .line 27068
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->k:Landroid/widget/Button;

    invoke-static {v0, v6, v7}, Lcom/xueqiu/android/cube/CubeActivity;->b(Landroid/widget/Button;ZI)V

    .line 27069
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->p:Landroid/widget/Button;

    const/4 v1, 0x3

    invoke-static {v0, v6, v1}, Lcom/xueqiu/android/cube/CubeActivity;->b(Landroid/widget/Button;ZI)V

    .line 27071
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ah:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 27072
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ah:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 27073
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ah:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->p:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 27075
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 27076
    const v1, 0x7f080098

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 27077
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->ah:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/chart/view/LineChart;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27079
    invoke-direct {p0, v8}, Lcom/xueqiu/android/cube/CubeActivity;->c(I)V

    .line 27746
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_a

    .line 27747
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v0, v7, :cond_9

    .line 28180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 27748
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getLastUserRbGid()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$59;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/cube/CubeActivity$59;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 28475
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/c;->a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1672
    :goto_4
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->w:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/community/widget/i;->a(Z)V

    .line 1673
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getStyle()Lcom/xueqiu/android/cube/model/Style;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1674
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getStyle()Lcom/xueqiu/android/cube/model/Style;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Style;->getColor0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 1675
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1676
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ai:Landroid/graphics/drawable/Drawable;

    .line 1677
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ai:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->aq:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 30066
    :goto_5
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 1683
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ai:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 31180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 30688
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    new-array v1, v8, [Ljava/lang/String;

    const-string v3, "owner"

    aput-object v3, v1, v6

    const-string v3, "all"

    aput-object v3, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v6, Lcom/xueqiu/android/cube/CubeActivity$37;

    invoke-direct {v6, p0, p0}, Lcom/xueqiu/android/cube/CubeActivity$37;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 31484
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/aj;->a(Ljava/lang/String;Ljava/util/List;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1685
    return-void

    .line 17329
    :cond_5
    const v0, 0x7f0e03d4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 21918
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->J:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 21925
    :cond_7
    const v0, 0x7f070431

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 21957
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 29180
    :cond_9
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 27762
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$60;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/cube/CubeActivity$60;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 29479
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-static {v1}, Lcom/xueqiu/android/base/util/as;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_4

    .line 27777
    :cond_a
    const-string v0, "CubeActivity"

    const-string v1, "mcube is null "

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1679
    :cond_b
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ai:Landroid/graphics/drawable/Drawable;

    .line 1680
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->v:Landroid/view/View;

    const v1, 0x7f0d0088

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5
.end method

.method static synthetic s(Lcom/xueqiu/android/cube/CubeActivity;)I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->an:I

    return v0
.end method

.method static synthetic t(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 4

    .prologue
    .line 164
    .line 50293
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwnerId()J

    move-result-wide v0

    .line 50298
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 50299
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 50293
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 50294
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/xueqiu/android/cube/CubeEditActivity;

    const-string v2, "extra_cube"

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 50295
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/xueqiu/android/cube/CubeActivity;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ar:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic v(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/community/a/ak;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->x:Lcom/xueqiu/android/community/a/ak;

    return-object v0
.end method

.method static synthetic w(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ac:Landroid/view/View;

    return-object v0
.end method

.method static synthetic x(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 4

    .prologue
    .line 164
    .line 50300
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50303
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700f5

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700f4

    .line 50304
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    .line 50305
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$13;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeActivity$13;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    .line 50313
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$11;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeActivity$11;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 50332
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 164
    :cond_1
    return-void
.end method

.method static synthetic y(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 3

    .prologue
    .line 164
    .line 50334
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    .line 50343
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 50344
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 50337
    if-eqz v0, :cond_1

    .line 50345
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 50338
    :cond_0
    :goto_0
    return-void

    .line 50340
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic z(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 4

    .prologue
    .line 164
    .line 50347
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50350
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700d1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700d0

    .line 50351
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    .line 50352
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$15;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeActivity$15;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    .line 50360
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$14;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeActivity$14;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 50379
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 164
    :cond_1
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 2635
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v0, v3, :cond_4

    .line 50110
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-wide v2, v4

    .line 2637
    :cond_1
    cmpl-double v0, v2, v4

    if-nez v0, :cond_3

    .line 50122
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 2638
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v2

    const-string v3, "annual"

    new-instance v4, Lcom/xueqiu/android/cube/CubeActivity$55;

    invoke-direct {v4, p0, p0, p1}, Lcom/xueqiu/android/cube/CubeActivity$55;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2715
    :goto_0
    return-void

    .line 50114
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->am:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/d;

    .line 50115
    iget-object v1, v0, Lcom/xueqiu/android/cube/d;->rankParam:Ljava/lang/String;

    const-string v7, "annual"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 50116
    iget-object v1, v0, Lcom/xueqiu/android/cube/d;->a:Ljava/lang/Double;

    if-eqz v1, :cond_7

    .line 50117
    iget-object v0, v0, Lcom/xueqiu/android/cube/d;->a:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-wide v0, v2

    :goto_2
    move-wide v2, v0

    .line 50120
    goto :goto_1

    .line 2654
    :cond_3
    invoke-direct {p0, p1, v2, v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(ID)V

    goto :goto_0

    .line 2660
    :cond_4
    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$57;

    invoke-direct {v1, p0, p0, p1}, Lcom/xueqiu/android/cube/CubeActivity$57;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;I)V

    .line 2704
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 2705
    const-string v0, "$%s(%s)$"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2706
    const/4 v0, 0x0

    .line 2707
    iget v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->q:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->q:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 2709
    :cond_5
    const-string v0, "%.2f%%"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v5}, Lcom/xueqiu/android/cube/model/Cube;->getTotalGain()Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2712
    :cond_6
    iget v4, p0, Lcom/xueqiu/android/cube/CubeActivity;->q:I

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/xueqiu/android/base/b/ai;->a(ILjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2714
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->h()Landroid/app/Dialog;

    goto :goto_0

    :cond_7
    move-wide v0, v2

    goto :goto_2
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 2403
    const v0, 0x7f0a0083

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->setTheme(I)V

    .line 2404
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 1139
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 1140
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-nez v0, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    if-ne p1, v3, :cond_2

    if-ne p2, v1, :cond_2

    .line 1144
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xueqiu/android/cube/CubeActivity;->a(JLjava/lang/String;)V

    .line 1146
    const v0, 0x7f070385

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getBoolean(Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07041f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07042f

    const/4 v2, 0x0

    .line 1151
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070446

    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$19;

    invoke-direct {v2, p0, p3}, Lcom/xueqiu/android/cube/CubeActivity$19;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Landroid/content/Intent;)V

    .line 1152
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1185
    :cond_2
    if-ne p1, v2, :cond_3

    if-ne p2, v1, :cond_3

    .line 1186
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xueqiu/android/cube/CubeActivity;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 1187
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    .line 1188
    const-string v0, "extra_task_id"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 1190
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ar:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1192
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    if-ne p2, v2, :cond_7

    .line 1193
    const-string v0, "delete_status_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1194
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 1195
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->x:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1196
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1197
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1198
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 1199
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-nez v0, :cond_5

    .line 1200
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1204
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->x:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ak;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1206
    :cond_7
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xueqiu/android/cube/CubeActivity;->a(JLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    .line 2442
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2443
    const-string v1, "extra_cube"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2444
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/cube/CubeActivity;->setResult(ILandroid/content/Intent;)V

    .line 2446
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 2447
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 320
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 321
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->setContentView(I)V

    .line 322
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ai:Landroid/graphics/drawable/Drawable;

    .line 323
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ai:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ai:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ai:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->aq:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 327
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_cube_symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ap:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ap:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    iput v5, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    .line 334
    :goto_0
    const v0, 0x7f0e016c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->t:Landroid/view/View;

    .line 335
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 336
    iget v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v1, v3, :cond_3

    .line 337
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300f8

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    .line 341
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v2, 0x7f0e027d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->v:Landroid/view/View;

    .line 342
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 343
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 344
    new-instance v1, Lcom/xueqiu/android/community/a/ak;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->x:Lcom/xueqiu/android/community/a/ak;

    .line 345
    new-instance v1, Lcom/xueqiu/android/community/widget/i;

    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$12;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeActivity$12;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/xueqiu/android/community/widget/i;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->w:Lcom/xueqiu/android/community/widget/i;

    .line 386
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->w:Lcom/xueqiu/android/community/widget/i;

    const-string v2, "\u8fd8\u6ca1\u6709\u8bc4\u8bba\uff0c\u5c31\u7b49\u4f60\u70b9\u8bc4\u4e86\uff01"

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/widget/i;->a(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->w:Lcom/xueqiu/android/community/widget/i;

    const v2, 0x7f02019a

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/widget/i;->a(I)V

    .line 388
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->w:Lcom/xueqiu/android/community/widget/i;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->x:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/widget/i;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 389
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->w:Lcom/xueqiu/android/community/widget/i;

    new-instance v2, Lcom/xueqiu/android/cube/CubeActivity$23;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/cube/CubeActivity$23;-><init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/widget/i;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 399
    const v1, 0x7f0e0172

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    iput-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->af:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    .line 400
    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$34;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$34;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 411
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->y:Landroid/widget/TextView;

    .line 412
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->z:Landroid/widget/TextView;

    .line 413
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->A:Landroid/widget/TextView;

    .line 414
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->B:Landroid/widget/TextView;

    .line 415
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->C:Landroid/widget/TextView;

    .line 416
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->D:Landroid/widget/LinearLayout;

    .line 417
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->E:Landroid/widget/TextView;

    .line 418
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->F:Landroid/widget/TextView;

    .line 419
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->H:Landroid/widget/TextView;

    .line 420
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->I:Landroid/widget/TextView;

    .line 421
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->J:Landroid/view/View;

    .line 422
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->G:Landroid/widget/TextView;

    .line 423
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->K:Landroid/widget/ImageView;

    .line 424
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->L:Landroid/view/View;

    .line 425
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->R:Landroid/widget/TextView;

    .line 426
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/RadarChart;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->Q:Lcom/xueqiu/android/common/widget/RadarChart;

    .line 427
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->S:Landroid/widget/LinearLayout;

    .line 428
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->T:Landroid/widget/ImageView;

    .line 429
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->U:Landroid/widget/TextView;

    .line 430
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->V:Landroid/widget/TextView;

    .line 431
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/view/LineChart;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    .line 432
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->Y:Landroid/widget/TextView;

    .line 433
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ag:Landroid/widget/LinearLayout;

    .line 434
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->Z:Landroid/view/View;

    .line 435
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->aa:Landroid/view/View;

    .line 436
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->O:Landroid/widget/TextView;

    .line 437
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->P:Landroid/view/View;

    .line 438
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/view/PieChart;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->M:Lcom/xueqiu/chart/view/PieChart;

    .line 439
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->N:Landroid/widget/TextView;

    .line 440
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->aa:Landroid/view/View;

    const v1, 0x7f0e036b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ab:Landroid/widget/LinearLayout;

    .line 441
    const v0, 0x7f0e016e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->X:Landroid/view/View;

    .line 442
    const v0, 0x7f0e016f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ac:Landroid/view/View;

    .line 443
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ac:Landroid/view/View;

    const v1, 0x7f0e0170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ad:Landroid/widget/TextView;

    .line 444
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ac:Landroid/view/View;

    const v1, 0x7f0e0171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ae:Landroid/widget/ImageButton;

    .line 445
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->L:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$45;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$45;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->Z:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$56;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$56;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->P:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$64;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$64;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ae:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$65;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$65;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ac:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$66;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$66;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$2;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    const v0, 0x7f0e03cc

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$3;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->q()V

    .line 4071
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e03dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$16;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$16;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4078
    const v0, 0x7f070433

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4079
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v1

    .line 4080
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 4081
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v3, v0}, Lcom/xueqiu/chart/view/LineChart;->setEmptyDescription(Ljava/lang/String;)V

    .line 4082
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getEmptyLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    .line 5034
    iget-object v0, v0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 4082
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 4083
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->W:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getEmptyLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    .line 6034
    iget-object v0, v0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 4083
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 4084
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->k()V

    .line 519
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_cube"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    .line 520
    if-eqz v0, :cond_4

    .line 521
    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/model/Cube;)V

    .line 522
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(JLjava/lang/String;)V

    .line 527
    :goto_2
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_share"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->d(I)V

    .line 531
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xueqiu.android.action.statusPosted"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$4;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lrx/j;)V

    .line 545
    iget v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    if-ne v0, v5, :cond_1

    .line 546
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->P:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    const v1, 0x7f0e0455

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeActivity$5;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    :cond_1
    return-void

    .line 331
    :cond_2
    iput v3, p0, Lcom/xueqiu/android/cube/CubeActivity;->ao:I

    goto/16 :goto_0

    .line 339
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030112

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->u:Landroid/view/View;

    goto/16 :goto_1

    .line 524
    :cond_4
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_cube_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity;->ap:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xueqiu/android/cube/CubeActivity;->a(JLjava/lang/String;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2408
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    .line 2410
    const v1, 0x7f0e000b

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    .line 2411
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f070555

    .line 2410
    :goto_0
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 2412
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 2415
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2411
    :cond_1
    const v0, 0x7f070160

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 2420
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 2421
    const v2, 0x7f0e000b

    if-ne v1, v2, :cond_1

    .line 2422
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2423
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700b6

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xueqiu/android/cube/CubeActivity;->s:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v5}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070070

    const/4 v3, 0x0

    .line 2424
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700b1

    new-instance v3, Lcom/xueqiu/android/cube/CubeActivity$52;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/cube/CubeActivity$52;-><init>(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 2425
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2430
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2436
    :goto_0
    return v0

    .line 2432
    :cond_0
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeActivity;->p()V

    goto :goto_0

    .line 2436
    :cond_1
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
