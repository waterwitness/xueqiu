.class public Lcom/xueqiu/android/community/TopicDetailActivity;
.super Lcom/xueqiu/android/base/j;
.source "TopicDetailActivity.java"

# interfaces
.implements Lcom/xueqiu/android/community/b/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/j",
        "<",
        "Lcom/xueqiu/android/community/d/c;",
        ">;",
        "Lcom/xueqiu/android/community/b/i;"
    }
.end annotation


# instance fields
.field public p:Z

.field private q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

.field private r:Lcom/xueqiu/android/community/widget/TransparentHeader;

.field private s:Landroid/view/View;

.field private t:Lcom/xueqiu/android/community/a/ao;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:J

.field private y:Lcom/d/a/b/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v1, 0x7f020208

    .line 55
    invoke-direct {p0}, Lcom/xueqiu/android/base/j;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->p:Z

    .line 377
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 1293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 2248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 380
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x42920000    # 73.0f

    .line 381
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 2445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 381
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->y:Lcom/d/a/b/d;

    .line 377
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/PullToZoomListView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    return-object v0
.end method

.method private static a(Landroid/widget/ImageView;Z)V
    .locals 1

    .prologue
    .line 481
    if-eqz p1, :cond_0

    .line 482
    const v0, 0x7f020146

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    const v0, 0x7f020145

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/TopicDetailActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/a/ao;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->t:Lcom/xueqiu/android/community/a/ao;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->r:Lcom/xueqiu/android/community/widget/TransparentHeader;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/TopicDetailActivity;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->x:J

    return-wide v0
.end method

.method static synthetic g(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/community/model/RecommendStock;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 470
    const v0, 0x7f0e01ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 471
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/RecommendStock;->isHasExist()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->a(Landroid/widget/ImageView;Z)V

    .line 472
    return-void
.end method

.method public final a(Lcom/xueqiu/android/community/model/TopicInfo;)V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v4, 0x3

    const v9, 0x7f020460

    const v11, 0x7f020208

    .line 171
    iget-object v5, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    .line 4217
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4218
    const v1, 0x7f0300b8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 4219
    const v0, 0x7f0e02f3

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4220
    const v1, 0x7f0e02f2

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4222
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4223
    invoke-static {p0}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x15

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4224
    invoke-static {p0}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x15

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4225
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4226
    const v2, 0x7f0e02f4

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4227
    const v3, 0x7f0e02f5

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4228
    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicType()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 4229
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v7

    .line 4293
    iput v9, v7, Lcom/d/a/b/e;->c:I

    .line 5270
    iput v9, v7, Lcom/d/a/b/e;->b:I

    .line 6248
    iput v9, v7, Lcom/d/a/b/e;->a:I

    .line 4233
    invoke-virtual {v7}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v7

    .line 4234
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v8

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicPicHeader()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v10}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v8, v9, v1, v7, v10}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 4235
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4236
    const/high16 v7, 0x430c0000    # 140.0f

    invoke-static {v7}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 4237
    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static {v7}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setHeight(I)V

    .line 4239
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicType()I

    move-result v7

    if-nez v7, :cond_3

    .line 4240
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4241
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4242
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4243
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v7, 0xe

    if-le v1, v7, :cond_6

    .line 4244
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    div-int/lit8 v1, v1, 0x2

    .line 4245
    if-le v1, v4, :cond_1

    move v1, v4

    .line 4248
    :cond_1
    rsub-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4253
    :cond_2
    :goto_0
    const/high16 v0, 0x431b0000    # 155.0f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 4254
    const/high16 v0, 0x41f80000    # 31.0f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 4257
    :cond_3
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4258
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_4
    invoke-virtual {v5, v6}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a(Landroid/view/View;)V

    .line 172
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->r:Lcom/xueqiu/android/community/widget/TransparentHeader;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->setTitle(Ljava/lang/String;)V

    .line 175
    :cond_5
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 6293
    iput v11, v0, Lcom/d/a/b/e;->c:I

    .line 7270
    iput v11, v0, Lcom/d/a/b/e;->b:I

    .line 8248
    iput v11, v0, Lcom/d/a/b/e;->a:I

    .line 179
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    .line 180
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicPic()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/community/TopicDetailActivity$4;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/TopicDetailActivity$4;-><init>(Lcom/xueqiu/android/community/TopicDetailActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 199
    return-void

    .line 4250
    :cond_6
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public final a(Lcom/xueqiu/android/community/model/User;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 476
    const v0, 0x7f0e01ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 477
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->a(Landroid/widget/ImageView;Z)V

    .line 478
    return-void
.end method

.method public final a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/a/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 465
    sget-object v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->TOTAL:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    invoke-virtual {p2, p1, v0, v1, v1}, Lcom/xueqiu/android/cube/a/c;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/CubeCalGainType;ZZ)V

    .line 466
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->t:Lcom/xueqiu/android/community/a/ao;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ao;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 267
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->t:Lcom/xueqiu/android/community/a/ao;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ao;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/community/d/c;

    .line 9108
    iget-boolean v0, v0, Lcom/xueqiu/android/community/d/c;->e:Z

    .line 267
    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->w:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->t:Lcom/xueqiu/android/community/a/ao;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ao;->notifyDataSetChanged()V

    .line 273
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendStock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 305
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 306
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 308
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/TopicDetailActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v2, Lcom/xueqiu/android/community/d/c;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/d/c;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03006d

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 312
    const v2, 0x7f0e01e4

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, "\u76f8\u5173\u80a1\u7968"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/xueqiu/android/community/model/RecommendStock;

    .line 10322
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03006e

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 10323
    new-instance v2, Lcom/xueqiu/android/community/TopicDetailActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/xueqiu/android/community/TopicDetailActivity$7;-><init>(Lcom/xueqiu/android/community/TopicDetailActivity;Lcom/xueqiu/android/community/model/RecommendStock;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10335
    const v2, 0x7f0e01e6

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 10336
    const v2, 0x7f0e01e7

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 10337
    const v3, 0x7f0e01e8

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 10338
    const v4, 0x7f0e01e9

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 10339
    const v5, 0x7f0e01ea

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 10340
    const v6, 0x7f0e01ed

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 10341
    const v7, 0x7f0e01eb

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 10342
    const v7, 0x7f0e01ec

    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 10343
    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/RecommendStock;->isHasExist()Z

    move-result v14

    invoke-static {v7, v14}, Lcom/xueqiu/android/community/TopicDetailActivity;->a(Landroid/widget/ImageView;Z)V

    .line 10344
    new-instance v7, Lcom/xueqiu/android/community/TopicDetailActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8, v11}, Lcom/xueqiu/android/community/TopicDetailActivity$8;-><init>(Lcom/xueqiu/android/community/TopicDetailActivity;Lcom/xueqiu/android/community/model/RecommendStock;Landroid/view/View;)V

    invoke-virtual {v13, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10350
    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v13, "%.2f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/RecommendStock;->getCurrent()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v7, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10351
    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/RecommendStock;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10352
    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10353
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v2

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/RecommendStock;->getChange()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10354
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "%+.2f(%+.2f)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/RecommendStock;->getChange()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v5, v7

    const/4 v7, 0x1

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/RecommendStock;->getPercentage()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v5, v7

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10355
    const-string v2, "\u70b9\u8bc4\uff1a"

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/RecommendStock;->getRecommendReason()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#ff7700"

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 318
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    .line 11106
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v9, v3, v4}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 319
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    const v1, 0x7f0e02f5

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 281
    new-instance v1, Lcom/xueqiu/android/community/TopicDetailActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/community/TopicDetailActivity$6;-><init>(Lcom/xueqiu/android/community/TopicDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 420
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 421
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v9, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 422
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 424
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 425
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/community/d/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/d/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006d

    invoke-virtual {v0, v1, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 427
    const v0, 0x7f0e01e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v4, "\u76f8\u5173\u7ec4\u5408"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    move v1, v2

    .line 431
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 432
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0300fc

    invoke-virtual {v0, v4, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 433
    new-instance v5, Lcom/xueqiu/android/cube/a/c;

    invoke-direct {v5}, Lcom/xueqiu/android/cube/a/c;-><init>()V

    .line 434
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v6, Lcom/xueqiu/android/community/TopicDetailActivity$2;

    invoke-direct {v6, p0, v5}, Lcom/xueqiu/android/community/TopicDetailActivity$2;-><init>(Lcom/xueqiu/android/community/TopicDetailActivity;Lcom/xueqiu/android/cube/a/c;)V

    iget-object v7, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->y:Lcom/d/a/b/d;

    invoke-virtual {v5, v4, v0, v6, v7}, Lcom/xueqiu/android/cube/a/c;->a(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/xueqiu/android/cube/a/b;Lcom/d/a/b/d;)Lcom/xueqiu/android/cube/a/c;

    .line 456
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    sget-object v6, Lcom/xueqiu/android/cube/model/CubeCalGainType;->TOTAL:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    invoke-virtual {v5, v0, v6, v2, v2}, Lcom/xueqiu/android/cube/a/c;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/CubeCalGainType;ZZ)V

    .line 457
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 12489
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12490
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 12491
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12492
    const v4, 0x7f0d012a

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 458
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 431
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    .line 13106
    invoke-virtual {v0, v3, v8, v2}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 461
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 361
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 362
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 363
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 365
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 366
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/community/d/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/d/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006d

    invoke-virtual {v0, v1, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 368
    const v0, 0x7f0e01e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "\u76f8\u5173\u7528\u6237"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/xueqiu/android/community/model/User;

    .line 11384
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    invoke-virtual {v0, v1, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 11385
    new-instance v0, Lcom/xueqiu/android/community/TopicDetailActivity$9;

    invoke-direct {v0, p0, v5}, Lcom/xueqiu/android/community/TopicDetailActivity$9;-><init>(Lcom/xueqiu/android/community/TopicDetailActivity;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11398
    const v0, 0x7f0e01ee

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 11399
    const v1, 0x7f0e01d0

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11400
    const v2, 0x7f0e01ef

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 11401
    const v3, 0x7f0e01ed

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 11402
    const v4, 0x7f0e01eb

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 11403
    const v4, 0x7f0e01ec

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 11404
    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v10

    invoke-static {v4, v10}, Lcom/xueqiu/android/community/TopicDetailActivity;->a(Landroid/widget/ImageView;Z)V

    .line 11405
    new-instance v4, Lcom/xueqiu/android/community/TopicDetailActivity$10;

    invoke-direct {v4, p0, v5, v8}, Lcom/xueqiu/android/community/TopicDetailActivity$10;-><init>(Lcom/xueqiu/android/community/TopicDetailActivity;Lcom/xueqiu/android/community/model/User;Landroid/view/View;)V

    invoke-virtual {v9, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11411
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v4

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->y:Lcom/d/a/b/d;

    invoke-virtual {v4, v9, v0, v10}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 11412
    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11413
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%d \u4eba\u5173\u6ce8"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getFollowersCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v11

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11414
    const-string v0, "\u70b9\u8bc4\uff1a"

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getRecommendReason()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#ff7700"

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    .line 12106
    invoke-virtual {v0, v6, v12, v11}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 375
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 498
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->v:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 499
    return-void

    .line 498
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 503
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->s:Landroid/view/View;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 504
    return-void

    .line 503
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic d()Lcom/xueqiu/android/base/c;
    .locals 4

    .prologue
    .line 55
    .line 14089
    new-instance v0, Lcom/xueqiu/android/community/d/c;

    iget-wide v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->x:J

    invoke-direct {v0, v2, v3, p0}, Lcom/xueqiu/android/community/d/c;-><init>(JLcom/xueqiu/android/community/b/i;)V

    .line 55
    return-object v0
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 532
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->setTheme(I)V

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->e()V

    goto :goto_0
.end method

.method public final j()V
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcom/xueqiu/android/community/a/ao;

    iget-wide v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->x:J

    invoke-direct {v0, p0, v2, v3}, Lcom/xueqiu/android/community/a/ao;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->t:Lcom/xueqiu/android/community/a/ao;

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->t:Lcom/xueqiu/android/community/a/ao;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    new-instance v1, Lcom/xueqiu/android/community/TopicDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/TopicDetailActivity$1;-><init>(Lcom/xueqiu/android/community/TopicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    new-instance v1, Lcom/xueqiu/android/community/TopicDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/TopicDetailActivity$3;-><init>(Lcom/xueqiu/android/community/TopicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 167
    return-void
.end method

.method public final k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 297
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006d

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 298
    const v0, 0x7f0e01e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "\u76f8\u5173\u6587\u7ae0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    .line 10106
    invoke-virtual {v0, v1, v4, v3}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 300
    return-void
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->removeFooterView(Landroid/view/View;)Z

    .line 509
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    .line 513
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/base/j;->onActivityResult(IILandroid/content/Intent;)V

    .line 514
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 515
    const-string v0, "back_status"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 516
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->t:Lcom/xueqiu/android/community/a/ao;

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->t:Lcom/xueqiu/android/community/a/ao;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/ao;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/Status;

    .line 519
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 520
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRetweetsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/model/Status;->setRetweetsCount(I)V

    .line 521
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/Status;->setCommentsCount(I)V

    .line 522
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->t:Lcom/xueqiu/android/community/a/ao;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ao;->notifyDataSetChanged()V

    .line 528
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/j;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/xueqiu/android/community/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "topic_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->x:J

    .line 74
    iget-wide v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/xueqiu/android/community/TopicDetailActivity;->finish()V

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->setContentView(I)V

    .line 79
    const v0, 0x7f0e0141

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->v:Landroid/view/View;

    .line 3066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 82
    const v0, 0x7f0e0051

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/widget/PullToZoomListView;

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    .line 3202
    const v0, 0x7f0e0119

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/widget/TransparentHeader;

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->r:Lcom/xueqiu/android/community/widget/TransparentHeader;

    .line 3203
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->r:Lcom/xueqiu/android/community/widget/TransparentHeader;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getBackButton()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->u:Landroid/widget/ImageButton;

    .line 3204
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->u:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xueqiu/android/community/TopicDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/TopicDetailActivity$5;-><init>(Lcom/xueqiu/android/community/TopicDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4093
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03021c

    invoke-virtual {v0, v1, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->s:Landroid/view/View;

    .line 4094
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->s:Landroid/view/View;

    const v1, 0x7f0e076c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4096
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->addFooterView(Landroid/view/View;)V

    .line 4097
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030217

    invoke-virtual {v0, v1, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->w:Landroid/view/View;

    .line 4098
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->w:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4099
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->w:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4100
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->q:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->addFooterView(Landroid/view/View;)V

    goto/16 :goto_0
.end method
