.class public final Lcom/xueqiu/android/community/a/o;
.super Lcom/xueqiu/android/common/a/d;
.source "PublicTimelineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/community/model/PublicTimeline;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/content/Context;

.field private g:Lcom/xueqiu/android/common/c;

.field private h:Lcom/d/a/b/d;

.field private i:Lcom/d/a/b/d;

.field private j:Lcom/d/a/b/d;

.field private k:Lcom/d/a/b/f;

.field private l:I

.field private m:Z

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/a/y;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/a/y;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/a/y;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Ljava/text/DateFormat;

.field private v:Lcom/xueqiu/android/base/b/ai;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/c;)V
    .locals 7

    .prologue
    const/high16 v6, 0x41c00000    # 24.0f

    const v1, 0x7f020208

    const v5, 0x7f020190

    const v4, 0x7f02018f

    const/4 v3, 0x0

    .line 119
    invoke-virtual {p1}, Lcom/xueqiu/android/common/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/o;->i:Lcom/d/a/b/d;

    .line 91
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 2270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 2293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 3248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 94
    new-instance v1, Lcom/d/a/b/c/c;

    .line 95
    invoke-static {v6}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 3445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 95
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/o;->j:Lcom/d/a/b/d;

    .line 97
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/o;->k:Lcom/d/a/b/f;

    .line 101
    iput-boolean v3, p0, Lcom/xueqiu/android/community/a/o;->m:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/o;->n:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/o;->o:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/o;->p:Ljava/util/List;

    .line 112
    iput v3, p0, Lcom/xueqiu/android/community/a/o;->q:I

    iput v3, p0, Lcom/xueqiu/android/community/a/o;->r:I

    iput v3, p0, Lcom/xueqiu/android/community/a/o;->s:I

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/a/o;->t:I

    .line 879
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/o;->u:Ljava/text/DateFormat;

    .line 948
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/o;->v:Lcom/xueqiu/android/base/b/ai;

    .line 120
    invoke-virtual {p1}, Lcom/xueqiu/android/common/c;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/o;->f:Landroid/content/Context;

    .line 121
    iput-object p1, p0, Lcom/xueqiu/android/community/a/o;->g:Lcom/xueqiu/android/common/c;

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/community/a/o;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/o;->e:Landroid/view/LayoutInflater;

    .line 4127
    iget-object v0, p0, Lcom/xueqiu/android/community/a/o;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4128
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 4129
    invoke-static {v6}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/community/a/o;->t:I

    .line 4131
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4132
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 4293
    iput v5, v0, Lcom/d/a/b/e;->c:I

    .line 5248
    iput v5, v0, Lcom/d/a/b/e;->a:I

    .line 5270
    iput v5, v0, Lcom/d/a/b/e;->b:I

    .line 4135
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/o;->h:Lcom/d/a/b/d;

    .line 4136
    iput v5, p0, Lcom/xueqiu/android/community/a/o;->l:I

    :goto_0
    return-void

    .line 4138
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 5293
    iput v4, v0, Lcom/d/a/b/e;->c:I

    .line 6248
    iput v4, v0, Lcom/d/a/b/e;->a:I

    .line 6270
    iput v4, v0, Lcom/d/a/b/e;->b:I

    .line 4141
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/o;->h:Lcom/d/a/b/d;

    .line 4142
    iput v4, p0, Lcom/xueqiu/android/community/a/o;->l:I

    goto :goto_0
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 910
    packed-switch p0, :pswitch_data_0

    .line 938
    sget v0, Lcom/xueqiu/android/community/a/v;->g:I

    .line 940
    :goto_0
    return v0

    .line 917
    :pswitch_0
    sget v0, Lcom/xueqiu/android/community/a/v;->a:I

    goto :goto_0

    .line 920
    :pswitch_1
    sget v0, Lcom/xueqiu/android/community/a/v;->b:I

    goto :goto_0

    .line 926
    :pswitch_2
    sget v0, Lcom/xueqiu/android/community/a/v;->d:I

    goto :goto_0

    .line 929
    :pswitch_3
    sget v0, Lcom/xueqiu/android/community/a/v;->c:I

    goto :goto_0

    .line 932
    :pswitch_4
    sget v0, Lcom/xueqiu/android/community/a/v;->e:I

    goto :goto_0

    .line 935
    :pswitch_5
    sget v0, Lcom/xueqiu/android/community/a/v;->f:I

    goto :goto_0

    .line 910
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(II)I
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 79
    .line 50195
    packed-switch p0, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 50197
    :pswitch_0
    if-nez p1, :cond_0

    .line 50198
    const/4 v0, 0x7

    goto :goto_0

    .line 50204
    :pswitch_1
    if-nez p1, :cond_1

    .line 50205
    const/16 v0, 0xb

    goto :goto_0

    .line 50207
    :cond_1
    const/16 v0, 0xc

    .line 50209
    goto :goto_0

    .line 50211
    :pswitch_2
    if-nez p1, :cond_2

    .line 50212
    const/16 v0, 0xd

    goto :goto_0

    .line 50214
    :cond_2
    const/16 v0, 0xe

    .line 50216
    goto :goto_0

    .line 50218
    :pswitch_3
    if-nez p1, :cond_3

    .line 50219
    const/16 v0, 0xf

    goto :goto_0

    .line 50221
    :cond_3
    const/16 v0, 0x10

    .line 50223
    goto :goto_0

    .line 50225
    :pswitch_4
    if-nez p1, :cond_4

    .line 50226
    const/16 v0, 0x11

    goto :goto_0

    .line 50228
    :cond_4
    const/16 v0, 0x12

    .line 50230
    goto :goto_0

    .line 50195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/o;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/community/a/o;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/q;)Landroid/view/View;
    .locals 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/xueqiu/android/community/a/o;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 510
    const v0, 0x7f0e02c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/q;->b:Landroid/widget/ImageView;

    .line 511
    const v0, 0x7f0e02c3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/q;->c:Landroid/widget/TextView;

    .line 512
    const v0, 0x7f0e02c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/q;->a:Landroid/widget/LinearLayout;

    .line 514
    const v0, 0x7f0e02bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/q;->f:Landroid/widget/TextView;

    .line 515
    const v0, 0x7f0e02c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/q;->g:Landroid/widget/TextView;

    .line 516
    const v0, 0x7f0e02bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/q;->d:Landroid/widget/ImageView;

    .line 517
    const v0, 0x7f0e02be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/q;->e:Landroid/widget/ImageView;

    .line 518
    const v0, 0x7f0e02c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/q;->h:Landroid/widget/LinearLayout;

    .line 519
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 520
    return-object v1
.end method

.method private a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/r;)Landroid/view/View;
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/xueqiu/android/community/a/o;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 698
    const v0, 0x7f0e02c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/r;->a:Landroid/widget/TextView;

    .line 699
    const v0, 0x7f0e02c6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/r;->b:Landroid/widget/LinearLayout;

    .line 700
    const v0, 0x7f0e02c5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/r;->c:Landroid/widget/LinearLayout;

    .line 701
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 702
    return-object v1
.end method

.method private a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/s;)Landroid/view/View;
    .locals 3

    .prologue
    .line 771
    iget-object v0, p0, Lcom/xueqiu/android/community/a/o;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ae

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 772
    const v0, 0x7f0e02a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/s;->a:Landroid/widget/TextView;

    .line 773
    const v0, 0x7f0e02c8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/s;->b:Landroid/support/v7/widget/RecyclerView;

    .line 774
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 775
    return-object v1
.end method

.method private a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/t;)Landroid/view/View;
    .locals 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/xueqiu/android/community/a/o;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 653
    const v0, 0x7f0e02dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/t;->a:Landroid/widget/ImageView;

    .line 654
    const v0, 0x7f0e02de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/t;->b:Landroid/widget/TextView;

    .line 655
    const v0, 0x7f0e02df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/t;->c:Landroid/widget/TextView;

    .line 656
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 657
    return-object v1
.end method

.method private a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/u;)Landroid/view/View;
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/xueqiu/android/community/a/o;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 400
    const v0, 0x7f0e02e1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/u;->c:Landroid/widget/ImageView;

    .line 401
    const v0, 0x7f0e02e2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/u;->d:Landroid/widget/TextView;

    .line 402
    const v0, 0x7f0e02e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/u;->a:Landroid/widget/LinearLayout;

    .line 403
    const v0, 0x7f0e02e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/u;->b:Landroid/widget/LinearLayout;

    .line 405
    const v0, 0x7f0e02e6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/u;->g:Landroid/widget/TextView;

    .line 406
    const v0, 0x7f0e02e7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/u;->h:Landroid/widget/TextView;

    .line 407
    const v0, 0x7f0e02ea

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/u;->i:Landroid/widget/TextView;

    .line 408
    const v0, 0x7f0e02eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/u;->j:Landroid/widget/TextView;

    .line 409
    const v0, 0x7f0e02e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/u;->e:Landroid/widget/ImageView;

    .line 410
    const v0, 0x7f0e02e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/u;->f:Landroid/widget/ImageView;

    .line 411
    const v0, 0x7f0e02e9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/u;->k:Landroid/widget/TextView;

    .line 412
    const v0, 0x7f0e02e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/xueqiu/android/community/a/u;->l:Landroid/widget/ImageView;

    .line 413
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 414
    return-object v1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/o;Lcom/google/gson/JsonObject;ILjava/lang/String;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 79
    .line 50235
    invoke-virtual {p0}, Lcom/xueqiu/android/community/a/o;->getCount()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 50238
    invoke-virtual {p0, p2}, Lcom/xueqiu/android/community/a/o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimeline;

    .line 50239
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 50282
    :cond_0
    :goto_0
    return-void

    .line 50242
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getData()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 50244
    if-eqz v1, :cond_0

    const-string v2, "elements"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "elements"

    .line 50245
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "elements"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50248
    const-string v2, "elements"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v6

    .line 50249
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 50250
    check-cast v2, Lcom/google/gson/JsonObject;

    .line 50251
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 50252
    const-string v8, "USER"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 50253
    const-string v8, "following"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_2

    .line 50255
    :cond_3
    const-string v8, "has_exist"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_3

    .line 50258
    :cond_5
    const-string v2, "elements"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 50259
    const-string v2, "elements"

    invoke-virtual {v1, v2, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 50260
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/PublicTimeline;->setData(Ljava/lang/String;)V

    .line 50262
    const-string v1, "STOCK"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 50263
    iget-object v1, p0, Lcom/xueqiu/android/community/a/o;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/y;

    .line 50287
    iget-wide v4, v1, Lcom/xueqiu/android/community/a/y;->d:J

    .line 50264
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getTimelineId()J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-nez v3, :cond_6

    .line 50265
    invoke-virtual {v1, v6}, Lcom/xueqiu/android/community/a/y;->a(Lcom/google/gson/JsonArray;)V

    .line 50270
    :cond_7
    const-string v1, "CUBE"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 50271
    iget-object v1, p0, Lcom/xueqiu/android/community/a/o;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/y;

    .line 50288
    iget-wide v4, v1, Lcom/xueqiu/android/community/a/y;->d:J

    .line 50272
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getTimelineId()J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-nez v3, :cond_8

    .line 50273
    invoke-virtual {v1, v6}, Lcom/xueqiu/android/community/a/y;->a(Lcom/google/gson/JsonArray;)V

    .line 50278
    :cond_9
    const-string v1, "USER"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50279
    iget-object v1, p0, Lcom/xueqiu/android/community/a/o;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/y;

    .line 50289
    iget-wide v4, v1, Lcom/xueqiu/android/community/a/y;->d:J

    .line 50280
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getTimelineId()J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-nez v3, :cond_a

    .line 50281
    invoke-virtual {v1, v6}, Lcom/xueqiu/android/community/a/y;->a(Lcom/google/gson/JsonArray;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/a/o;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/xueqiu/android/community/a/o;->l:I

    return v0
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    .line 945
    sget v0, Lcom/xueqiu/android/community/a/v;->a:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/a/o;)Lcom/xueqiu/android/common/c;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/community/a/o;->g:Lcom/xueqiu/android/common/c;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/a/o;)Ljava/util/List;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/community/a/o;->p:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c(I)V
    .locals 7

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/xueqiu/android/community/a/o;->getCount()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimeline;

    .line 955
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getData()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 957
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    const-string v2, "STOCK"

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 961
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-string v3, "elements"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/community/a/o$1;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/community/a/o$1;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 963
    invoke-virtual {v4}, Lcom/xueqiu/android/community/a/o$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 961
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 965
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 966
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/android/community/model/RecommendStock;

    .line 967
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 970
    :cond_2
    iget-object v3, p0, Lcom/xueqiu/android/community/a/o;->v:Lcom/xueqiu/android/base/b/ai;

    const/4 v5, 0x0

    new-instance v6, Lcom/xueqiu/android/community/a/o$2;

    invoke-direct {v6, p0, v2, v1, v0}, Lcom/xueqiu/android/community/a/o$2;-><init>(Lcom/xueqiu/android/community/a/o;Ljava/util/List;Lcom/google/gson/JsonObject;Lcom/xueqiu/android/community/model/PublicTimeline;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/util/List;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final d(I)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 1005
    invoke-virtual {p0}, Lcom/xueqiu/android/community/a/o;->getCount()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimeline;

    .line 1009
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_0

    .line 1012
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getData()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 1013
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 1015
    const-string v2, "STOCK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CUBE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1016
    :cond_2
    const-string v2, ""

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 1021
    :goto_1
    const-string v5, "STOCK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1022
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v5

    const-string v6, "elements"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    new-instance v6, Lcom/xueqiu/android/community/a/o$3;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/community/a/o$3;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 1024
    invoke-virtual {v6}, Lcom/xueqiu/android/community/a/o$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 1022
    invoke-virtual {v5, v0, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1025
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RecommendStock;

    .line 1026
    const-string v6, "%s,%s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v1, v7, v3

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1018
    :cond_3
    const-string v2, ""

    goto :goto_1

    .line 1028
    :cond_4
    const-string v5, "CUBE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1029
    const-string v5, "elements"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    move v0, v3

    .line 1030
    :goto_3
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 1031
    const-string v6, "%s,%s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v1, v7, v3

    invoke-virtual {v5, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v8, "id"

    invoke-virtual {v1, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1030
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1033
    :cond_5
    const-string v5, "USER"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1034
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v5

    const-string v6, "elements"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    new-instance v6, Lcom/xueqiu/android/community/a/o$4;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/community/a/o$4;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 1036
    invoke-virtual {v6}, Lcom/xueqiu/android/community/a/o$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 1034
    invoke-virtual {v5, v0, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1037
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 1038
    const-string v6, "%s,%d"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v3

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1042
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/community/a/o;->v:Lcom/xueqiu/android/base/b/ai;

    new-instance v3, Lcom/xueqiu/android/community/a/o$5;

    invoke-direct {v3, p0, v4, p1}, Lcom/xueqiu/android/community/a/o$5;-><init>(Lcom/xueqiu/android/community/a/o;Ljava/lang/String;I)V

    .line 50194
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v2, v1, v3}, Lcom/xueqiu/android/base/b/an;->d(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimeline;

    .line 255
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimeline;

    .line 151
    if-eqz p1, :cond_3

    .line 154
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/a/o;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/PublicTimeline;

    .line 155
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v2

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xueqiu/android/community/a/o;->m:Z

    .line 162
    :goto_0
    const/4 v7, 0x0

    .line 163
    const/4 v6, 0x0

    .line 164
    const/4 v5, 0x0

    .line 165
    const/4 v4, 0x0

    .line 166
    const/4 v3, 0x0

    .line 167
    const/4 v2, 0x0

    .line 169
    if-nez p2, :cond_a

    .line 171
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v8, Lcom/xueqiu/android/community/a/v;->a:I

    if-ne v1, v8, :cond_4

    .line 172
    new-instance v1, Lcom/xueqiu/android/community/a/u;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/u;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 173
    invoke-direct {p0, p3, v1}, Lcom/xueqiu/android/community/a/o;->a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/u;)Landroid/view/View;

    move-result-object p2

    move-object v10, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v10

    move-object v11, v5

    move-object v5, v6

    move-object v6, v1

    move-object v1, v11

    .line 235
    :goto_1
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v7

    invoke-static {v7}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v7

    sget v8, Lcom/xueqiu/android/community/a/v;->a:I

    if-ne v7, v8, :cond_1b

    if-eqz v6, :cond_1b

    .line 7280
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getData()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/model/PublicTimelineStatus;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/PublicTimelineStatus;

    .line 7281
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    .line 8079
    iget-boolean v2, v2, Lcom/xueqiu/android/community/a/o;->m:Z

    .line 7281
    if-eqz v2, :cond_16

    .line 7282
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getHeaderText()Ljava/lang/String;

    move-result-object v2

    .line 7283
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getHeaderIcon()Ljava/lang/String;

    move-result-object v3

    .line 7287
    iget-object v4, v6, Lcom/xueqiu/android/community/a/u;->b:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7288
    iget-object v4, v6, Lcom/xueqiu/android/community/a/u;->d:Landroid/widget/TextView;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7289
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    .line 9079
    iget-object v2, v2, Lcom/xueqiu/android/community/a/o;->k:Lcom/d/a/b/f;

    .line 7289
    iget-object v4, v6, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    .line 10079
    iget-object v4, v4, Lcom/xueqiu/android/community/a/o;->i:Lcom/d/a/b/d;

    .line 7289
    new-instance v5, Lcom/xueqiu/android/community/a/u$1;

    invoke-direct {v5, v6}, Lcom/xueqiu/android/community/a/u$1;-><init>(Lcom/xueqiu/android/community/a/u;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 7296
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getTarget()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    .line 7297
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->b:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 7313
    :goto_2
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->isPromotion()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 7314
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->i:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7315
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->j:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7323
    :goto_3
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getPicType()I

    move-result v2

    if-nez v2, :cond_18

    .line 7324
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->e:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7325
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->f:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7364
    :cond_1
    :goto_4
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getTopicTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7365
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getTopicDesc()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    .line 17079
    iget-object v4, v4, Lcom/xueqiu/android/community/a/o;->f:Landroid/content/Context;

    .line 7365
    invoke-static {v3, v4}, Lcom/xueqiu/android/base/util/ai;->b(Ljava/lang/CharSequence;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7366
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getReplyCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7367
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getRetweetCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7368
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 7369
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->k:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7370
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->l:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7372
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7374
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    .line 18079
    iget-object v2, v2, Lcom/xueqiu/android/community/a/o;->k:Lcom/d/a/b/f;

    .line 7374
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lcom/xueqiu/android/community/a/u;->l:Landroid/widget/ImageView;

    iget-object v5, v6, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    .line 19079
    iget-object v5, v5, Lcom/xueqiu/android/community/a/o;->j:Lcom/d/a/b/d;

    .line 7374
    invoke-virtual {v2, v3, v4, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 7379
    :goto_5
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->a:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/xueqiu/android/community/a/u$5;

    invoke-direct {v3, v6, v1, v0}, Lcom/xueqiu/android/community/a/u$5;-><init>(Lcom/xueqiu/android/community/a/u;Lcom/xueqiu/android/community/model/PublicTimelineStatus;Lcom/xueqiu/android/community/model/PublicTimeline;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_2
    :goto_6
    return-object p2

    .line 158
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xueqiu/android/community/a/o;->m:Z

    goto/16 :goto_0

    .line 174
    :cond_4
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v8, Lcom/xueqiu/android/community/a/v;->b:I

    if-ne v1, v8, :cond_5

    .line 175
    new-instance v1, Lcom/xueqiu/android/community/a/q;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/q;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 176
    invoke-direct {p0, p3, v1}, Lcom/xueqiu/android/community/a/o;->a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/q;)Landroid/view/View;

    move-result-object p2

    move-object v6, v7

    move-object v10, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v10

    move-object v11, v1

    move-object v1, v5

    move-object v5, v11

    goto/16 :goto_1

    .line 177
    :cond_5
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v8, Lcom/xueqiu/android/community/a/v;->d:I

    if-ne v1, v8, :cond_6

    .line 178
    new-instance v1, Lcom/xueqiu/android/community/a/t;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/t;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 179
    invoke-direct {p0, p3, v1}, Lcom/xueqiu/android/community/a/o;->a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/t;)Landroid/view/View;

    move-result-object p2

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_1

    .line 180
    :cond_6
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v8, Lcom/xueqiu/android/community/a/v;->c:I

    if-ne v1, v8, :cond_7

    .line 181
    new-instance v1, Lcom/xueqiu/android/community/a/r;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/r;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 182
    invoke-direct {p0, p3, v1}, Lcom/xueqiu/android/community/a/o;->a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/r;)Landroid/view/View;

    move-result-object p2

    move-object v5, v6

    move-object v6, v7

    move-object v10, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v10

    goto/16 :goto_1

    .line 183
    :cond_7
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v8, Lcom/xueqiu/android/community/a/v;->e:I

    if-ne v1, v8, :cond_8

    .line 184
    new-instance v1, Lcom/xueqiu/android/community/a/s;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/s;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 185
    invoke-direct {p0, p3, v1}, Lcom/xueqiu/android/community/a/o;->a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/s;)Landroid/view/View;

    move-result-object p2

    move-object v3, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_1

    .line 186
    :cond_8
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v8, Lcom/xueqiu/android/community/a/v;->f:I

    if-ne v1, v8, :cond_9

    .line 187
    new-instance v2, Lcom/xueqiu/android/community/a/p;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/a/p;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 6863
    iget-object v1, p0, Lcom/xueqiu/android/community/a/o;->e:Landroid/view/LayoutInflater;

    const v8, 0x7f0300aa

    const/4 v9, 0x0

    invoke-virtual {v1, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 6864
    const v1, 0x7f0e02ba

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/xueqiu/android/community/a/p;->a:Landroid/widget/LinearLayout;

    .line 6865
    const v1, 0x7f0e02b7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/xueqiu/android/community/a/p;->b:Landroid/widget/LinearLayout;

    .line 6866
    const v1, 0x7f0e02b8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/xueqiu/android/community/a/p;->c:Landroid/widget/ImageView;

    .line 6867
    const v1, 0x7f0e02b9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/xueqiu/android/community/a/p;->d:Landroid/widget/TextView;

    .line 6869
    const v1, 0x7f0e02bb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iput-object v1, v2, Lcom/xueqiu/android/community/a/p;->e:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    .line 6870
    const v1, 0x7f0e01cf

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/xueqiu/android/community/a/p;->f:Landroid/widget/ImageView;

    .line 6871
    const v1, 0x7f0e01d0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/xueqiu/android/community/a/p;->g:Landroid/widget/TextView;

    .line 6872
    const v1, 0x7f0e0209

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/xueqiu/android/community/a/p;->h:Landroid/widget/TextView;

    .line 6873
    const v1, 0x7f0e01d3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/widget/SnowBallTextView;

    iput-object v1, v2, Lcom/xueqiu/android/community/a/p;->i:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    .line 6875
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v5

    move-object v5, v6

    move-object v6, v7

    move-object v10, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v10

    .line 188
    goto/16 :goto_1

    .line 191
    :cond_9
    iget-object v1, p0, Lcom/xueqiu/android/community/a/o;->e:Landroid/view/LayoutInflater;

    const v8, 0x7f030219

    const/4 v9, 0x0

    invoke-virtual {v1, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 192
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v5

    move-object v5, v6

    move-object v6, v7

    move-object v10, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v10

    goto/16 :goto_1

    .line 195
    :cond_a
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v8, Lcom/xueqiu/android/community/a/v;->a:I

    if-ne v1, v8, :cond_c

    .line 196
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xueqiu/android/community/a/u;

    if-eqz v1, :cond_b

    .line 197
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/u;

    move-object v10, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v10

    move-object v11, v5

    move-object v5, v6

    move-object v6, v1

    move-object v1, v11

    goto/16 :goto_1

    .line 199
    :cond_b
    new-instance v1, Lcom/xueqiu/android/community/a/u;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/u;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 200
    invoke-direct {p0, p3, v1}, Lcom/xueqiu/android/community/a/o;->a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/u;)Landroid/view/View;

    move-result-object p2

    move-object v10, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v10

    move-object v11, v5

    move-object v5, v6

    move-object v6, v1

    move-object v1, v11

    goto/16 :goto_1

    .line 202
    :cond_c
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v8, Lcom/xueqiu/android/community/a/v;->b:I

    if-ne v1, v8, :cond_e

    .line 203
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xueqiu/android/community/a/q;

    if-eqz v1, :cond_d

    .line 204
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/q;

    move-object v6, v7

    move-object v10, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v10

    move-object v11, v1

    move-object v1, v5

    move-object v5, v11

    goto/16 :goto_1

    .line 206
    :cond_d
    new-instance v1, Lcom/xueqiu/android/community/a/q;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/q;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 207
    invoke-direct {p0, p3, v1}, Lcom/xueqiu/android/community/a/o;->a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/q;)Landroid/view/View;

    move-result-object p2

    move-object v6, v7

    move-object v10, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v10

    move-object v11, v1

    move-object v1, v5

    move-object v5, v11

    goto/16 :goto_1

    .line 209
    :cond_e
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v8, Lcom/xueqiu/android/community/a/v;->d:I

    if-ne v1, v8, :cond_10

    .line 210
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xueqiu/android/community/a/t;

    if-eqz v1, :cond_f

    .line 211
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/t;

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_1

    .line 213
    :cond_f
    new-instance v1, Lcom/xueqiu/android/community/a/t;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/t;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 214
    invoke-direct {p0, p3, v1}, Lcom/xueqiu/android/community/a/o;->a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/t;)Landroid/view/View;

    move-result-object p2

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_1

    .line 216
    :cond_10
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v8, Lcom/xueqiu/android/community/a/v;->c:I

    if-ne v1, v8, :cond_12

    .line 217
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xueqiu/android/community/a/r;

    if-eqz v1, :cond_11

    .line 218
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/r;

    move-object v5, v6

    move-object v6, v7

    move-object v10, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v10

    goto/16 :goto_1

    .line 220
    :cond_11
    new-instance v1, Lcom/xueqiu/android/community/a/r;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/r;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 221
    invoke-direct {p0, p3, v1}, Lcom/xueqiu/android/community/a/o;->a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/r;)Landroid/view/View;

    move-result-object p2

    move-object v5, v6

    move-object v6, v7

    move-object v10, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v10

    goto/16 :goto_1

    .line 223
    :cond_12
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v8, Lcom/xueqiu/android/community/a/v;->e:I

    if-ne v1, v8, :cond_14

    .line 224
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xueqiu/android/community/a/s;

    if-eqz v1, :cond_13

    .line 225
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/s;

    move-object v3, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_1

    .line 227
    :cond_13
    new-instance v1, Lcom/xueqiu/android/community/a/s;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/s;-><init>(Lcom/xueqiu/android/community/a/o;)V

    .line 228
    invoke-direct {p0, p3, v1}, Lcom/xueqiu/android/community/a/o;->a(Landroid/view/ViewGroup;Lcom/xueqiu/android/community/a/s;)Landroid/view/View;

    move-result-object p2

    move-object v3, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_1

    .line 230
    :cond_14
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v8, Lcom/xueqiu/android/community/a/v;->f:I

    if-ne v1, v8, :cond_3b

    .line 231
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/p;

    move-object v2, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_1

    .line 7299
    :cond_15
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->b:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 7300
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->b:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/xueqiu/android/community/a/u$2;

    invoke-direct {v3, v6, v0}, Lcom/xueqiu/android/community/a/u$2;-><init>(Lcom/xueqiu/android/community/a/u;Lcom/xueqiu/android/community/model/PublicTimeline;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 7310
    :cond_16
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->b:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 7317
    :cond_17
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->i:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7318
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 7326
    :cond_18
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getPicType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 7327
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->e:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7328
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->f:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7329
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    .line 11079
    iget-object v2, v2, Lcom/xueqiu/android/community/a/o;->k:Lcom/d/a/b/f;

    .line 7329
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getTopicPic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    .line 12079
    iget-object v4, v4, Lcom/xueqiu/android/community/a/o;->h:Lcom/d/a/b/d;

    .line 7329
    new-instance v5, Lcom/xueqiu/android/community/a/u$3;

    invoke-direct {v5, v6}, Lcom/xueqiu/android/community/a/u$3;-><init>(Lcom/xueqiu/android/community/a/u;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto/16 :goto_4

    .line 7342
    :cond_19
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getPicType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 7343
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->f:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7344
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->e:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7345
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 7346
    iget-object v3, v6, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    .line 13079
    iget v3, v3, Lcom/xueqiu/android/community/a/o;->t:I

    .line 7346
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7347
    iget-object v3, v6, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    .line 14079
    iget v3, v3, Lcom/xueqiu/android/community/a/o;->t:I

    .line 7347
    int-to-double v4, v3

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->proportion()D

    move-result-wide v8

    mul-double/2addr v4, v8

    double-to-int v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7348
    iget-object v3, v6, Lcom/xueqiu/android/community/a/u;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7349
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    .line 15079
    iget-object v2, v2, Lcom/xueqiu/android/community/a/o;->k:Lcom/d/a/b/f;

    .line 7349
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getTopicPicHd()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    .line 16079
    iget-object v4, v4, Lcom/xueqiu/android/community/a/o;->h:Lcom/d/a/b/d;

    .line 7349
    new-instance v5, Lcom/xueqiu/android/community/a/u$4;

    invoke-direct {v5, v6}, Lcom/xueqiu/android/community/a/u$4;-><init>(Lcom/xueqiu/android/community/a/u;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto/16 :goto_4

    .line 7376
    :cond_1a
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->k:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7377
    iget-object v2, v6, Lcom/xueqiu/android/community/a/u;->l:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 237
    :cond_1b
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v6

    invoke-static {v6}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v6

    sget v7, Lcom/xueqiu/android/community/a/v;->b:I

    if-ne v6, v7, :cond_24

    if-eqz v5, :cond_24

    .line 19429
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getData()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/model/Interview;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/Interview;

    .line 19431
    iget-object v2, v5, Lcom/xueqiu/android/community/a/q;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getHeaderText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19432
    iget-object v2, v5, Lcom/xueqiu/android/community/a/q;->i:Lcom/xueqiu/android/community/a/o;

    .line 20079
    iget-object v2, v2, Lcom/xueqiu/android/community/a/o;->k:Lcom/d/a/b/f;

    .line 19432
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getHeaderIcon()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v5, Lcom/xueqiu/android/community/a/q;->b:Landroid/widget/ImageView;

    iget-object v4, v5, Lcom/xueqiu/android/community/a/q;->i:Lcom/xueqiu/android/community/a/o;

    .line 21079
    iget-object v4, v4, Lcom/xueqiu/android/community/a/o;->i:Lcom/d/a/b/d;

    .line 19432
    invoke-virtual {v2, v0, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 19434
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Interview;->getPicType()I

    move-result v0

    if-nez v0, :cond_20

    .line 19435
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->d:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19436
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->e:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19475
    :cond_1c
    :goto_7
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Interview;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19476
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Interview;->getDescription()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v5, Lcom/xueqiu/android/community/a/q;->i:Lcom/xueqiu/android/community/a/o;

    .line 28079
    iget-object v3, v3, Lcom/xueqiu/android/community/a/o;->f:Landroid/content/Context;

    .line 19476
    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/ai;->b(Ljava/lang/CharSequence;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19477
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 19478
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Interview;->getUsers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 19480
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Interview;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_22

    const/4 v0, 0x2

    move v3, v0

    .line 19481
    :goto_8
    const/4 v0, 0x0

    move v4, v0

    :goto_9
    if-ge v4, v3, :cond_23

    .line 19482
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Interview;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 19483
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->i:Lcom/xueqiu/android/community/a/o;

    .line 29079
    iget-object v0, v0, Lcom/xueqiu/android/community/a/o;->e:Landroid/view/LayoutInflater;

    .line 19483
    const v2, 0x7f03008b

    iget-object v6, v5, Lcom/xueqiu/android/community/a/q;->h:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 19484
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Interview;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 19485
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 19486
    const v2, 0x7f0e025a

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19488
    :cond_1d
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 19489
    const v2, 0x7f0e0259

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 19490
    iget-object v7, v5, Lcom/xueqiu/android/community/a/q;->i:Lcom/xueqiu/android/community/a/o;

    .line 30079
    iget-object v7, v7, Lcom/xueqiu/android/community/a/o;->k:Lcom/d/a/b/f;

    .line 19490
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v8, v5, Lcom/xueqiu/android/community/a/q;->i:Lcom/xueqiu/android/community/a/o;

    .line 31079
    iget-object v8, v8, Lcom/xueqiu/android/community/a/o;->j:Lcom/d/a/b/d;

    .line 19490
    invoke-virtual {v7, v0, v2, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 19492
    :cond_1e
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 19481
    :cond_1f
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_9

    .line 19437
    :cond_20
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Interview;->getPicType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 19438
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->d:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19439
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->e:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19440
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->i:Lcom/xueqiu/android/community/a/o;

    .line 22079
    iget-object v0, v0, Lcom/xueqiu/android/community/a/o;->k:Lcom/d/a/b/f;

    .line 19440
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Interview;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v5, Lcom/xueqiu/android/community/a/q;->i:Lcom/xueqiu/android/community/a/o;

    .line 23079
    iget-object v3, v3, Lcom/xueqiu/android/community/a/o;->h:Lcom/d/a/b/d;

    .line 19440
    new-instance v4, Lcom/xueqiu/android/community/a/q$1;

    invoke-direct {v4, v5}, Lcom/xueqiu/android/community/a/q$1;-><init>(Lcom/xueqiu/android/community/a/q;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto/16 :goto_7

    .line 19453
    :cond_21
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Interview;->getPicType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1c

    .line 19454
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19455
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->e:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19457
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 19458
    iget-object v2, v5, Lcom/xueqiu/android/community/a/q;->i:Lcom/xueqiu/android/community/a/o;

    .line 24079
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->t:I

    .line 19458
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19459
    iget-object v2, v5, Lcom/xueqiu/android/community/a/q;->i:Lcom/xueqiu/android/community/a/o;

    .line 25079
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->t:I

    .line 19459
    int-to-double v2, v2

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Interview;->proportion()D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19460
    iget-object v2, v5, Lcom/xueqiu/android/community/a/q;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19461
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->i:Lcom/xueqiu/android/community/a/o;

    .line 26079
    iget-object v0, v0, Lcom/xueqiu/android/community/a/o;->k:Lcom/d/a/b/f;

    .line 19461
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Interview;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v5, Lcom/xueqiu/android/community/a/q;->i:Lcom/xueqiu/android/community/a/o;

    .line 27079
    iget-object v3, v3, Lcom/xueqiu/android/community/a/o;->h:Lcom/d/a/b/d;

    .line 19461
    new-instance v4, Lcom/xueqiu/android/community/a/q$2;

    invoke-direct {v4, v5}, Lcom/xueqiu/android/community/a/q$2;-><init>(Lcom/xueqiu/android/community/a/q;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto/16 :goto_7

    .line 19480
    :cond_22
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Interview;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    goto/16 :goto_8

    .line 19496
    :cond_23
    iget-object v0, v5, Lcom/xueqiu/android/community/a/q;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/xueqiu/android/community/a/q$3;

    invoke-direct {v2, v5, v1}, Lcom/xueqiu/android/community/a/q$3;-><init>(Lcom/xueqiu/android/community/a/q;Lcom/xueqiu/android/community/model/Interview;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 239
    :cond_24
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v5

    invoke-static {v5}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v5

    sget v6, Lcom/xueqiu/android/community/a/v;->d:I

    if-ne v5, v6, :cond_28

    if-eqz v2, :cond_28

    .line 31529
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    .line 31530
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getData()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 31533
    iget-object v3, v2, Lcom/xueqiu/android/community/a/t;->b:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31534
    iget-object v3, v2, Lcom/xueqiu/android/community/a/t;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31535
    const/4 v3, 0x7

    if-ne v1, v3, :cond_25

    .line 31536
    const-string v1, "tag"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 31537
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 31538
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    .line 31539
    iget-object v0, v2, Lcom/xueqiu/android/community/a/t;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31540
    iget-object v0, v2, Lcom/xueqiu/android/community/a/t;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31541
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v7, v0, 0x3

    .line 31542
    iget-object v1, v2, Lcom/xueqiu/android/community/a/t;->a:Landroid/widget/ImageView;

    .line 31636
    packed-switch v7, :pswitch_data_0

    .line 31644
    const v0, 0x7f020427

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 31542
    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31543
    iget-object v0, v2, Lcom/xueqiu/android/community/a/t;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/xueqiu/android/community/a/t$1;

    invoke-direct/range {v1 .. v7}, Lcom/xueqiu/android/community/a/t$1;-><init>(Lcom/xueqiu/android/community/a/t;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 31638
    :pswitch_0
    const v0, 0x7f020425

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    .line 31641
    :pswitch_1
    const v0, 0x7f020426

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    .line 31562
    :cond_25
    iget-object v3, v2, Lcom/xueqiu/android/community/a/t;->d:Lcom/xueqiu/android/community/a/o;

    .line 32079
    iget-object v3, v3, Lcom/xueqiu/android/community/a/o;->k:Lcom/d/a/b/f;

    .line 31562
    const-string v4, "pic"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/xueqiu/android/community/a/t;->d:Lcom/xueqiu/android/community/a/o;

    .line 33079
    iget-object v5, v5, Lcom/xueqiu/android/community/a/o;->i:Lcom/d/a/b/d;

    .line 31562
    new-instance v6, Lcom/xueqiu/android/community/a/t$2;

    invoke-direct {v6, v2}, Lcom/xueqiu/android/community/a/t$2;-><init>(Lcom/xueqiu/android/community/a/t;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 31577
    const/16 v3, 0x8

    if-ne v1, v3, :cond_26

    .line 31578
    iget-object v1, v2, Lcom/xueqiu/android/community/a/t;->b:Landroid/widget/TextView;

    const-string v3, "title"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31579
    iget-object v1, v2, Lcom/xueqiu/android/community/a/t;->c:Landroid/widget/TextView;

    const-string v3, "description"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31580
    iget-object v1, v2, Lcom/xueqiu/android/community/a/t;->a:Landroid/widget/ImageView;

    new-instance v3, Lcom/xueqiu/android/community/a/t$3;

    invoke-direct {v3, v2, v0}, Lcom/xueqiu/android/community/a/t$3;-><init>(Lcom/xueqiu/android/community/a/t;Lcom/google/gson/JsonObject;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 31592
    :cond_26
    const/16 v3, 0xa

    if-ne v1, v3, :cond_27

    .line 31593
    iget-object v1, v2, Lcom/xueqiu/android/community/a/t;->b:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31594
    iget-object v1, v2, Lcom/xueqiu/android/community/a/t;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31595
    iget-object v1, v2, Lcom/xueqiu/android/community/a/t;->a:Landroid/widget/ImageView;

    new-instance v3, Lcom/xueqiu/android/community/a/t$4;

    invoke-direct {v3, v2, v0}, Lcom/xueqiu/android/community/a/t$4;-><init>(Lcom/xueqiu/android/community/a/t;Lcom/google/gson/JsonObject;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31605
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x44c

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 31606
    const-string v2, "url"

    const-string v3, "url"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31607
    const-string v2, "ad_id"

    const-string v3, "ad_id"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 31608
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_6

    .line 31609
    :cond_27
    const/16 v3, 0xb

    if-ne v1, v3, :cond_2

    .line 31610
    iget-object v1, v2, Lcom/xueqiu/android/community/a/t;->b:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31611
    iget-object v1, v2, Lcom/xueqiu/android/community/a/t;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31612
    iget-object v1, v2, Lcom/xueqiu/android/community/a/t;->a:Landroid/widget/ImageView;

    new-instance v3, Lcom/xueqiu/android/community/a/t$5;

    invoke-direct {v3, v2, v0}, Lcom/xueqiu/android/community/a/t$5;-><init>(Lcom/xueqiu/android/community/a/t;Lcom/google/gson/JsonObject;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31626
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x44c

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 31627
    const-string v2, "url"

    const-string v3, "url"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31628
    const-string v2, "ad_id"

    const-string v3, "ad_id"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 31629
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_6

    .line 241
    :cond_28
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v2

    invoke-static {v2}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v2

    sget v5, Lcom/xueqiu/android/community/a/v;->c:I

    if-ne v2, v5, :cond_2a

    if-eqz v1, :cond_2a

    .line 35666
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getData()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/LiveNews;

    .line 35667
    iget-object v2, v1, Lcom/xueqiu/android/community/a/r;->d:Lcom/xueqiu/android/community/a/o;

    .line 36079
    iget-boolean v2, v2, Lcom/xueqiu/android/community/a/o;->m:Z

    .line 35667
    if-eqz v2, :cond_29

    .line 35668
    iget-object v2, v1, Lcom/xueqiu/android/community/a/r;->b:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35672
    :goto_b
    iget-object v2, v1, Lcom/xueqiu/android/community/a/r;->b:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/xueqiu/android/community/a/r$1;

    invoke-direct {v3, v1}, Lcom/xueqiu/android/community/a/r$1;-><init>(Lcom/xueqiu/android/community/a/r;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35681
    iget-object v2, v1, Lcom/xueqiu/android/community/a/r;->a:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/xueqiu/android/community/a/r;->d:Lcom/xueqiu/android/community/a/o;

    .line 37882
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 37883
    iget-object v5, v3, Lcom/xueqiu/android/community/a/o;->u:Ljava/text/DateFormat;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/LiveNews;->getCreatedAt()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 37884
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#ff7700"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v6, 0x0

    .line 37885
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x11

    .line 37884
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 37886
    const-string v5, " - "

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 37887
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/LiveNews;->getText()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Lcom/xueqiu/android/community/a/o;->f:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/xueqiu/android/base/util/ai;->b(Ljava/lang/CharSequence;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 35681
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35682
    iget-object v2, v1, Lcom/xueqiu/android/community/a/r;->c:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/xueqiu/android/community/a/r$2;

    invoke-direct {v3, v1, v0}, Lcom/xueqiu/android/community/a/r$2;-><init>(Lcom/xueqiu/android/community/a/r;Lcom/xueqiu/android/community/model/LiveNews;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 35670
    :cond_29
    iget-object v2, v1, Lcom/xueqiu/android/community/a/r;->b:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    .line 243
    :cond_2a
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v2, Lcom/xueqiu/android/community/a/v;->e:I

    if-ne v1, v2, :cond_30

    if-eqz v4, :cond_30

    .line 38710
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getData()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 38711
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 38712
    const-string v3, "elements"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 38715
    iget-object v5, v4, Lcom/xueqiu/android/community/a/s;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Landroid/support/v7/widget/k;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/support/v7/widget/k;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/aa;)V

    .line 38716
    const-string v5, "USER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 38717
    const-string v2, "\u63a8\u8350\u7528\u6237"

    .line 38718
    const-string v5, "name"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const-string v5, "name"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 38719
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 38721
    :goto_c
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38722
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->b:Landroid/support/v7/widget/RecyclerView;

    const/high16 v2, 0x434e0000    # 206.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setMinimumHeight(I)V

    .line 38725
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 39079
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->n:Ljava/util/List;

    .line 38725
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 40079
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->q:I

    .line 38725
    if-gt v1, v2, :cond_2b

    .line 38726
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 41079
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->n:Ljava/util/List;

    .line 38726
    new-instance v2, Lcom/xueqiu/android/community/a/y;

    iget-object v5, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 42079
    iget-object v5, v5, Lcom/xueqiu/android/community/a/o;->f:Landroid/content/Context;

    .line 38726
    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3}, Lcom/xueqiu/android/community/a/y;-><init>(Landroid/content/Context;ILcom/google/gson/JsonArray;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38730
    :goto_d
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 45079
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->n:Ljava/util/List;

    .line 38730
    iget-object v3, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 46079
    iget v3, v3, Lcom/xueqiu/android/community/a/o;->q:I

    .line 38730
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/s;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/s;)V

    .line 38731
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 47079
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->n:Ljava/util/List;

    .line 38731
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 48079
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->q:I

    .line 38731
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/y;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/y;->b()V

    .line 38732
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 49079
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->n:Ljava/util/List;

    .line 38732
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50079
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->q:I

    .line 38732
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/y;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getTimelineId()J

    move-result-wide v2

    .line 50080
    iput-wide v2, v1, Lcom/xueqiu/android/community/a/y;->d:J

    .line 38733
    iget-object v0, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50082
    iget v1, v1, Lcom/xueqiu/android/community/a/o;->q:I

    .line 38733
    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    .line 50083
    iput v1, v0, Lcom/xueqiu/android/community/a/o;->q:I

    goto/16 :goto_6

    .line 38728
    :cond_2b
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 43079
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->n:Ljava/util/List;

    .line 38728
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 44079
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->q:I

    .line 38728
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/y;

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/community/a/y;->a(Lcom/google/gson/JsonArray;)V

    goto :goto_d

    .line 38734
    :cond_2c
    const-string v5, "STOCK"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 38735
    const-string v2, "\u63a8\u8350\u80a1\u7968"

    .line 38736
    const-string v5, "name"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    const-string v5, "name"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_39

    .line 38737
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 38739
    :goto_e
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38740
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->b:Landroid/support/v7/widget/RecyclerView;

    const/high16 v2, 0x43320000    # 178.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setMinimumHeight(I)V

    .line 38741
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50084
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->p:Ljava/util/List;

    .line 38741
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50085
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->s:I

    .line 38741
    if-gt v1, v2, :cond_2d

    .line 38742
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50086
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->p:Ljava/util/List;

    .line 38742
    new-instance v2, Lcom/xueqiu/android/community/a/y;

    iget-object v5, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50087
    iget-object v5, v5, Lcom/xueqiu/android/community/a/o;->f:Landroid/content/Context;

    .line 38742
    const/4 v6, 0x3

    invoke-direct {v2, v5, v6, v3}, Lcom/xueqiu/android/community/a/y;-><init>(Landroid/content/Context;ILcom/google/gson/JsonArray;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38746
    :goto_f
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50090
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->p:Ljava/util/List;

    .line 38746
    iget-object v3, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50091
    iget v3, v3, Lcom/xueqiu/android/community/a/o;->s:I

    .line 38746
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/s;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/s;)V

    .line 38747
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50092
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->p:Ljava/util/List;

    .line 38747
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50093
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->s:I

    .line 38747
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/y;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/y;->b()V

    .line 38748
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50094
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->p:Ljava/util/List;

    .line 38748
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50095
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->s:I

    .line 38748
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/y;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getTimelineId()J

    move-result-wide v2

    .line 50096
    iput-wide v2, v1, Lcom/xueqiu/android/community/a/y;->d:J

    .line 38749
    iget-object v0, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50098
    iget v1, v1, Lcom/xueqiu/android/community/a/o;->s:I

    .line 38749
    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    .line 50099
    iput v1, v0, Lcom/xueqiu/android/community/a/o;->s:I

    goto/16 :goto_6

    .line 38744
    :cond_2d
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50088
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->p:Ljava/util/List;

    .line 38744
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50089
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->s:I

    .line 38744
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/y;

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/community/a/y;->a(Lcom/google/gson/JsonArray;)V

    goto :goto_f

    .line 38750
    :cond_2e
    const-string v5, "CUBE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38751
    const-string v2, "\u63a8\u8350\u7ec4\u5408"

    .line 38752
    const-string v5, "name"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    const-string v5, "name"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_38

    .line 38753
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 38755
    :goto_10
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38756
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->b:Landroid/support/v7/widget/RecyclerView;

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setMinimumHeight(I)V

    .line 38757
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50100
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->o:Ljava/util/List;

    .line 38757
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50101
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->r:I

    .line 38757
    if-gt v1, v2, :cond_2f

    .line 38758
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50102
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->o:Ljava/util/List;

    .line 38758
    new-instance v2, Lcom/xueqiu/android/community/a/y;

    iget-object v5, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50103
    iget-object v5, v5, Lcom/xueqiu/android/community/a/o;->f:Landroid/content/Context;

    .line 38758
    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v3}, Lcom/xueqiu/android/community/a/y;-><init>(Landroid/content/Context;ILcom/google/gson/JsonArray;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38762
    :goto_11
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50106
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->o:Ljava/util/List;

    .line 38762
    iget-object v3, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50107
    iget v3, v3, Lcom/xueqiu/android/community/a/o;->r:I

    .line 38762
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/s;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/s;)V

    .line 38763
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50108
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->o:Ljava/util/List;

    .line 38763
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50109
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->r:I

    .line 38763
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/y;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/y;->b()V

    .line 38764
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50110
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->o:Ljava/util/List;

    .line 38764
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50111
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->r:I

    .line 38764
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/y;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getTimelineId()J

    move-result-wide v2

    .line 50112
    iput-wide v2, v1, Lcom/xueqiu/android/community/a/y;->d:J

    .line 38765
    iget-object v0, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50114
    iget v1, v1, Lcom/xueqiu/android/community/a/o;->r:I

    .line 38765
    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    .line 50115
    iput v1, v0, Lcom/xueqiu/android/community/a/o;->r:I

    goto/16 :goto_6

    .line 38760
    :cond_2f
    iget-object v1, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50104
    iget-object v1, v1, Lcom/xueqiu/android/community/a/o;->o:Ljava/util/List;

    .line 38760
    iget-object v2, v4, Lcom/xueqiu/android/community/a/s;->c:Lcom/xueqiu/android/community/a/o;

    .line 50105
    iget v2, v2, Lcom/xueqiu/android/community/a/o;->r:I

    .line 38760
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/y;

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/community/a/y;->a(Lcom/google/gson/JsonArray;)V

    goto :goto_11

    .line 245
    :cond_30
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v1

    sget v2, Lcom/xueqiu/android/community/a/v;->f:I

    if-ne v1, v2, :cond_2

    if-eqz v3, :cond_2

    .line 50117
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getData()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/Status;

    .line 50118
    iget-object v2, v3, Lcom/xueqiu/android/community/a/p;->j:Lcom/xueqiu/android/community/a/o;

    .line 50185
    iget-boolean v2, v2, Lcom/xueqiu/android/community/a/o;->m:Z

    .line 50118
    if-eqz v2, :cond_34

    .line 50119
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getHeaderText()Ljava/lang/String;

    move-result-object v2

    .line 50120
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getHeaderIcon()Ljava/lang/String;

    move-result-object v4

    .line 50121
    iget-object v5, v3, Lcom/xueqiu/android/community/a/p;->b:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50122
    iget-object v5, v3, Lcom/xueqiu/android/community/a/p;->d:Landroid/widget/TextView;

    if-nez v2, :cond_31

    const-string v2, ""

    :cond_31
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50123
    iget-object v2, v3, Lcom/xueqiu/android/community/a/p;->j:Lcom/xueqiu/android/community/a/o;

    .line 50186
    iget-object v2, v2, Lcom/xueqiu/android/community/a/o;->k:Lcom/d/a/b/f;

    .line 50123
    iget-object v5, v3, Lcom/xueqiu/android/community/a/p;->j:Lcom/xueqiu/android/community/a/o;

    .line 50187
    iget-object v5, v5, Lcom/xueqiu/android/community/a/o;->i:Lcom/d/a/b/d;

    .line 50123
    new-instance v6, Lcom/xueqiu/android/community/a/p$1;

    invoke-direct {v6, v3}, Lcom/xueqiu/android/community/a/p$1;-><init>(Lcom/xueqiu/android/community/a/p;)V

    invoke-virtual {v2, v4, v5, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 50130
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getTarget()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_33

    .line 50131
    iget-object v2, v3, Lcom/xueqiu/android/community/a/p;->b:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 50148
    :goto_12
    iget-object v2, v3, Lcom/xueqiu/android/community/a/p;->e:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/xueqiu/android/community/a/p;->j:Lcom/xueqiu/android/community/a/o;

    .line 50188
    iget-object v5, v5, Lcom/xueqiu/android/community/a/o;->f:Landroid/content/Context;

    .line 50148
    iget-object v6, v3, Lcom/xueqiu/android/community/a/p;->e:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-static {v4, v5, v6}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 50150
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getAnswers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getAnswers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_32

    .line 50151
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getAnswers()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/community/model/Comment;

    .line 50152
    iget-object v4, v3, Lcom/xueqiu/android/community/a/p;->i:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/xueqiu/android/community/a/p;->j:Lcom/xueqiu/android/community/a/o;

    .line 50189
    iget-object v6, v6, Lcom/xueqiu/android/community/a/o;->f:Landroid/content/Context;

    .line 50152
    iget-object v7, v3, Lcom/xueqiu/android/community/a/p;->e:Lcom/xueqiu/android/common/widget/SnowBallTextView;

    invoke-static {v5, v6, v7}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 50153
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 50154
    iget-object v4, v3, Lcom/xueqiu/android/community/a/p;->g:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50155
    iget-object v4, v3, Lcom/xueqiu/android/community/a/p;->f:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50157
    iget-object v4, v3, Lcom/xueqiu/android/community/a/p;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50159
    iget-object v4, v3, Lcom/xueqiu/android/community/a/p;->j:Lcom/xueqiu/android/community/a/o;

    .line 50190
    iget-object v4, v4, Lcom/xueqiu/android/community/a/o;->k:Lcom/d/a/b/f;

    .line 50159
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/xueqiu/android/community/a/p;->f:Landroid/widget/ImageView;

    iget-object v7, v3, Lcom/xueqiu/android/community/a/p;->j:Lcom/xueqiu/android/community/a/o;

    .line 50191
    iget-object v7, v7, Lcom/xueqiu/android/community/a/o;->j:Lcom/d/a/b/d;

    .line 50159
    invoke-virtual {v4, v5, v6, v7}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 50160
    const-string v4, ""

    .line 50161
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v5

    .line 50192
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 50161
    if-nez v5, :cond_35

    .line 50162
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v2

    .line 50166
    :goto_13
    iget-object v4, v3, Lcom/xueqiu/android/community/a/p;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50172
    :cond_32
    :goto_14
    iget-object v2, v3, Lcom/xueqiu/android/community/a/p;->a:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/xueqiu/android/community/a/p$3;

    invoke-direct {v4, v3, v1, v0}, Lcom/xueqiu/android/community/a/p$3;-><init>(Lcom/xueqiu/android/community/a/p;Lcom/xueqiu/android/community/model/Status;Lcom/xueqiu/android/community/model/PublicTimeline;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 50133
    :cond_33
    iget-object v2, v3, Lcom/xueqiu/android/community/a/p;->b:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 50134
    iget-object v2, v3, Lcom/xueqiu/android/community/a/p;->b:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/xueqiu/android/community/a/p$2;

    invoke-direct {v4, v3, v0}, Lcom/xueqiu/android/community/a/p$2;-><init>(Lcom/xueqiu/android/community/a/p;Lcom/xueqiu/android/community/model/PublicTimeline;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_12

    .line 50144
    :cond_34
    iget-object v2, v3, Lcom/xueqiu/android/community/a/p;->b:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_12

    .line 50163
    :cond_35
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 50193
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 50163
    if-nez v5, :cond_37

    .line 50164
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 50168
    :cond_36
    iget-object v2, v3, Lcom/xueqiu/android/community/a/p;->g:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50169
    iget-object v2, v3, Lcom/xueqiu/android/community/a/p;->f:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    :cond_37
    move-object v2, v4

    goto :goto_13

    :cond_38
    move-object v1, v2

    goto/16 :goto_10

    :cond_39
    move-object v1, v2

    goto/16 :goto_e

    :cond_3a
    move-object v1, v2

    goto/16 :goto_c

    :cond_3b
    move-object v1, v5

    move-object v5, v6

    move-object v6, v7

    move-object v10, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v10

    goto/16 :goto_1

    .line 31636
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x7

    return v0
.end method
