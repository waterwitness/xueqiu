.class public Lcom/xueqiu/android/common/search/USearchActivity;
.super Lcom/xueqiu/android/base/j;
.source "USearchActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/search/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/j",
        "<",
        "Lcom/xueqiu/android/common/search/b/a;",
        ">;",
        "Lcom/xueqiu/android/common/search/a/c;"
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/widget/RelativeLayout;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ImageButton;

.field private G:J

.field private H:Lcom/xueqiu/android/common/model/SNBEvent;

.field private q:Landroid/widget/EditText;

.field private r:Lcom/d/a/b/d;

.field private s:Lcom/d/a/b/f;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Lcom/xueqiu/android/common/widget/NoScrollGridView;

.field private y:Lcom/xueqiu/android/common/a/i;

.field private z:Lcom/xueqiu/android/common/widget/CommonFlowLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/common/search/USearchActivity;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/xueqiu/android/base/j;-><init>()V

    .line 113
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x898

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->H:Lcom/xueqiu/android/common/model/SNBEvent;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/search/USearchActivity;)J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->G:J

    return-wide v0
.end method

.method static synthetic d(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/common/search/USearchActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/common/search/USearchActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/common/search/USearchActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic l(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/common/model/SNBEvent;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->H:Lcom/xueqiu/android/common/model/SNBEvent;

    return-object v0
.end method

.method static synthetic m(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic n(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/xueqiu/android/common/search/USearchActivity;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 470
    new-instance v0, Lcom/xueqiu/android/common/search/USearchActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/common/search/USearchActivity$12;-><init>(Lcom/xueqiu/android/common/search/USearchActivity;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    return-void
.end method

.method public final a(Lcom/xueqiu/android/stock/a/ad;)V
    .locals 7

    .prologue
    .line 575
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->u:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0161

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 576
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 578
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/a/ad;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 579
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    const/4 v1, 0x3

    if-ge v2, v1, :cond_0

    .line 580
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/xueqiu/android/stock/a/ad;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 581
    const v1, 0x7f0200f0

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 582
    const v1, 0x7f0e01fb

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 583
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/Stock;

    .line 584
    new-instance v5, Lcom/xueqiu/android/common/search/USearchActivity$4;

    invoke-direct {v5, p0, v1}, Lcom/xueqiu/android/common/search/USearchActivity$4;-><init>(Lcom/xueqiu/android/common/search/USearchActivity;Lcom/xueqiu/android/stock/model/Stock;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 602
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 603
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/USearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d012a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 605
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 579
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 607
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 286
    :cond_0
    return-void

    .line 283
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7305
    sget-object v1, Lcom/xueqiu/android/common/search/USearchActivity;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initSearchHistory keyword = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7306
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7307
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/search/USearchActivity;->b(Z)V

    .line 7309
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0300da

    iget-object v4, p0, Lcom/xueqiu/android/common/search/USearchActivity;->z:Lcom/xueqiu/android/common/widget/CommonFlowLayout;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7310
    iget-object v3, p0, Lcom/xueqiu/android/common/search/USearchActivity;->z:Lcom/xueqiu/android/common/widget/CommonFlowLayout;

    invoke-virtual {v3, v1}, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->addView(Landroid/view/View;)V

    .line 7311
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7312
    new-instance v3, Lcom/xueqiu/android/common/search/USearchActivity$9;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity$9;-><init>(Lcom/xueqiu/android/common/search/USearchActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcom/xueqiu/android/cube/a/k;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;",
            "Lcom/xueqiu/android/cube/a/k;",
            ")V"
        }
    .end annotation

    .prologue
    const v8, 0x7f0e0165

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 499
    const v0, 0x7f0e0163

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 500
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 502
    const v0, 0x7f0e0164

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 504
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 506
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/model/Cube;

    .line 507
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4, v0}, Lcom/xueqiu/android/cube/a/k;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 508
    const v4, 0x7f0200f0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 509
    const v4, 0x7f0e01fb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 510
    new-instance v4, Lcom/xueqiu/android/common/search/USearchActivity$2;

    invoke-direct {v4, p0, v1}, Lcom/xueqiu/android/common/search/USearchActivity$2;-><init>(Lcom/xueqiu/android/common/search/USearchActivity;Lcom/xueqiu/android/cube/model/Cube;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 529
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 530
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/USearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d012a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 532
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {p0, v8}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 536
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 537
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 542
    :goto_1
    return-void

    .line 539
    :cond_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 540
    const/4 v0, 0x5

    invoke-virtual {p0, v8}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/search/USearchActivity;->a(ILandroid/view/View;)V

    goto :goto_1
.end method

.method public final a(ZLandroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 336
    iput-wide p4, p0, Lcom/xueqiu/android/common/search/USearchActivity;->G:J

    .line 337
    if-eqz p1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->D:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 341
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->E:Landroid/widget/ImageView;

    new-instance v1, Lcom/xueqiu/android/common/search/USearchActivity$10;

    invoke-direct {v1, p0, p3, p4, p5}, Lcom/xueqiu/android/common/search/USearchActivity$10;-><init>(Lcom/xueqiu/android/common/search/USearchActivity;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    :try_start_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x898

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 382
    const-string v1, "ad_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 383
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->D:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 11
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
    const v10, 0x7f0e0167

    const/16 v9, 0x8

    const/4 v4, 0x0

    .line 426
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v1, v4

    .line 427
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 428
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    .line 430
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 431
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/xueqiu/android/community/model/User;

    .line 432
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 433
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 434
    const v1, 0x7f0e0310

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 435
    const v2, 0x7f0e0311

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity;->s:Lcom/d/a/b/f;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/xueqiu/android/common/search/USearchActivity;->r:Lcom/d/a/b/d;

    new-instance v8, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v8}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v2, v6, v1, v7, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 437
    new-instance v1, Lcom/xueqiu/android/common/search/USearchActivity$11;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/common/search/USearchActivity$11;-><init>(Lcom/xueqiu/android/common/search/USearchActivity;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->t:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 456
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity;->t:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0168

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 457
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 458
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    :goto_2
    return-void

    .line 461
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    const-string v1, "\u67e5\u770b\u66f4\u591a\u76f8\u5173\u7528\u6237"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->a(ILandroid/view/View;)V

    goto :goto_2
.end method

.method public final b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 290
    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 293
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->i(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 294
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->B:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 298
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 299
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/common/model/SearchHots;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->y:Lcom/xueqiu/android/common/a/i;

    .line 9030
    iput-object p1, v0, Lcom/xueqiu/android/common/a/i;->a:Ljava/util/List;

    .line 9031
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/i;->notifyDataSetChanged()V

    .line 547
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->x:Lcom/xueqiu/android/common/widget/NoScrollGridView;

    new-instance v1, Lcom/xueqiu/android/common/search/USearchActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/common/search/USearchActivity$3;-><init>(Lcom/xueqiu/android/common/search/USearchActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 555
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 331
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity;->C:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    return-void

    .line 331
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final synthetic d()Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 72
    .line 9399
    new-instance v0, Lcom/xueqiu/android/common/search/b/a;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/search/b/a;-><init>(Lcom/xueqiu/android/common/search/a/c;)V

    .line 72
    return-object v0
.end method

.method public final d(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 404
    const v0, 0x7f0e015f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 405
    const v0, 0x7f0e0169

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 406
    return-void

    :cond_0
    move v0, v2

    .line 404
    goto :goto_0

    :cond_1
    move v2, v1

    .line 405
    goto :goto_1
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 421
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity;->t:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 422
    return-void

    .line 421
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final f(Z)V
    .locals 2

    .prologue
    .line 493
    const v0, 0x7f0e0163

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 494
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 495
    return-void

    .line 494
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public final g(Z)V
    .locals 2

    .prologue
    .line 559
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity;->u:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 560
    return-void

    .line 559
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final h(Z)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 564
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->u:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0060

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 565
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity;->u:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0162

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 566
    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 568
    if-eqz p1, :cond_0

    .line 569
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->a(ILandroid/view/View;)V

    .line 571
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 566
    goto :goto_0

    :cond_2
    move v3, v4

    .line 567
    goto :goto_1
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->z:Lcom/xueqiu/android/common/widget/CommonFlowLayout;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/CommonFlowLayout;->removeAllViews()V

    .line 327
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 410
    const v0, 0x7f0e0141

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    return-void
.end method

.method public final m()V
    .locals 2

    .prologue
    .line 415
    const v0, 0x7f0e0141

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 416
    const v0, 0x7f0e015f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 616
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/common/search/b/a;

    .line 9083
    const-string v1, "extra_stock"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 9084
    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/xueqiu/android/common/search/b/a;->b:Lcom/xueqiu/android/stock/a/ad;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/xueqiu/android/common/search/b/a;->b:Lcom/xueqiu/android/stock/a/ad;

    .line 9086
    invoke-virtual {v2}, Lcom/xueqiu/android/stock/a/ad;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 9088
    iget-object v2, v0, Lcom/xueqiu/android/common/search/b/a;->b:Lcom/xueqiu/android/stock/a/ad;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/a/ad;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stock/model/Stock;

    .line 9090
    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9091
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/stock/model/Stock;->setHasExist(Z)V

    .line 9092
    iget-object v1, v0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    iget-object v0, v0, Lcom/xueqiu/android/common/search/b/a;->b:Lcom/xueqiu/android/stock/a/ad;

    invoke-interface {v1, v0}, Lcom/xueqiu/android/common/search/a/c;->a(Lcom/xueqiu/android/stock/a/ad;)V

    .line 620
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/base/j;->onActivityResult(IILandroid/content/Intent;)V

    .line 621
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 611
    invoke-virtual {p0, v0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->a(II)V

    .line 612
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v3, 0x7f0d0149

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v2, 0x7f020489

    .line 117
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/j;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->setContentView(I)V

    .line 119
    const v0, 0x7f0e0364

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->C:Landroid/widget/LinearLayout;

    .line 120
    const v0, 0x7f0e0361

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->B:Landroid/widget/LinearLayout;

    .line 121
    const v0, 0x7f0e0362

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->A:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->A:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/search/USearchActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/USearchActivity$1;-><init>(Lcom/xueqiu/android/common/search/USearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f0e035e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->D:Landroid/widget/RelativeLayout;

    .line 130
    const v0, 0x7f0e035f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->E:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f0e0360

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->F:Landroid/widget/ImageButton;

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->F:Landroid/widget/ImageButton;

    new-instance v1, Lcom/xueqiu/android/common/search/USearchActivity$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/USearchActivity$5;-><init>(Lcom/xueqiu/android/common/search/USearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v0, 0x7f0e005f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->v:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0e005e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->w:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0e0166

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->t:Landroid/widget/LinearLayout;

    .line 154
    const v0, 0x7f0e0160

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->u:Landroid/widget/LinearLayout;

    .line 155
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->s:Lcom/d/a/b/f;

    .line 156
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->b()Lcom/d/a/b/e;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 157
    invoke-virtual {v0, v1}, Lcom/d/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/d/a/b/e;

    move-result-object v0

    .line 1293
    iput v2, v0, Lcom/d/a/b/e;->c:I

    .line 2270
    iput v2, v0, Lcom/d/a/b/e;->b:I

    .line 3248
    iput v2, v0, Lcom/d/a/b/e;->a:I

    .line 160
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->r:Lcom/d/a/b/d;

    .line 161
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 165
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/USearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 4066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    new-instance v2, Landroid/support/v7/a/c;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/support/v7/a/c;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/a;->a(Landroid/view/View;Landroid/support/v7/a/c;)V

    .line 5066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v5}, Landroid/support/v7/a/a;->d(Z)V

    .line 6066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v4}, Landroid/support/v7/a/a;->c(Z)V

    .line 172
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->k()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "title"

    .line 6106
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    const v1, 0x7f070348

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/search/USearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/common/search/USearchActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/USearchActivity$6;-><init>(Lcom/xueqiu/android/common/search/USearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 231
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/common/search/USearchActivity$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/USearchActivity$7;-><init>(Lcom/xueqiu/android/common/search/USearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 257
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 259
    const v0, 0x7f0e015e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    new-instance v1, Lcom/xueqiu/android/common/search/USearchActivity$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/USearchActivity$8;-><init>(Lcom/xueqiu/android/common/search/USearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    const v0, 0x7f0e0365

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/NoScrollGridView;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->x:Lcom/xueqiu/android/common/widget/NoScrollGridView;

    .line 271
    new-instance v0, Lcom/xueqiu/android/common/a/i;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/a/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->y:Lcom/xueqiu/android/common/a/i;

    .line 272
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->x:Lcom/xueqiu/android/common/widget/NoScrollGridView;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity;->y:Lcom/xueqiu/android/common/a/i;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 273
    const v0, 0x7f0e0363

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/USearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/CommonFlowLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->z:Lcom/xueqiu/android/common/widget/CommonFlowLayout;

    .line 7053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 274
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x898

    invoke-direct {v1, v2, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 276
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity;->q:Landroid/widget/EditText;

    const v1, 0x7f07034c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0
.end method
