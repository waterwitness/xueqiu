.class final Lcom/xueqiu/android/message/a/ab;
.super Ljava/lang/Object;
.source "TalkListAdapter.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/view/View;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/ImageView;

.field i:Landroid/widget/ImageView;

.field j:Landroid/view/View;

.field k:Lcom/d/a/b/d;

.field final synthetic l:Lcom/xueqiu/android/message/a/z;


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/message/a/z;)V
    .locals 3

    .prologue
    .line 613
    iput-object p1, p0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    new-instance v0, Lcom/d/a/b/e;

    invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V

    .line 1341
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/d/a/b/e;->h:Z

    .line 641
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 642
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 1445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 2248
    const v1, 0x7f020488

    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 644
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/ab;->k:Lcom/d/a/b/d;

    .line 614
    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/message/a/z;B)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/a/ab;-><init>(Lcom/xueqiu/android/message/a/z;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/xueqiu/android/message/a/ab;->c:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 632
    iget-object v0, p0, Lcom/xueqiu/android/message/a/ab;->e:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 633
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/xueqiu/android/message/a/ab;->c:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 637
    iget-object v0, p0, Lcom/xueqiu/android/message/a/ab;->e:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 638
    return-void
.end method
