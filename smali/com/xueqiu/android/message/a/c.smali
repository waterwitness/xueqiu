.class public final Lcom/xueqiu/android/message/a/c;
.super Ljava/lang/Object;
.source "AlphabetIndexUserAdapter.java"


# instance fields
.field a:Landroid/widget/CheckBox;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/content/Context;

.field i:Lcom/d/a/b/d;

.field j:Lcom/d/a/b/d;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x7f020488

    const v1, 0x7f020483

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1270
    iput v2, v0, Lcom/d/a/b/e;->b:I

    .line 2248
    iput v2, v0, Lcom/d/a/b/e;->a:I

    .line 2293
    iput v2, v0, Lcom/d/a/b/e;->c:I

    .line 359
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/c;->i:Lcom/d/a/b/d;

    .line 360
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 3270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 4248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 4293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 364
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/c;->j:Lcom/d/a/b/d;

    .line 368
    return-void
.end method
