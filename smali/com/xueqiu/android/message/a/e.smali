.class public final Lcom/xueqiu/android/message/a/e;
.super Ljava/lang/Object;
.source "ChatAdapter.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ProgressBar;

.field f:Lcom/d/a/b/d;

.field final synthetic g:Lcom/xueqiu/android/message/a/d;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/message/a/d;Landroid/view/View;)V
    .locals 2

    .prologue
    const v1, 0x7f02028a

    .line 482
    iput-object p1, p0, Lcom/xueqiu/android/message/a/e;->g:Lcom/xueqiu/android/message/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 1293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 2248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 480
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/e;->f:Lcom/d/a/b/d;

    .line 483
    iput-object p2, p0, Lcom/xueqiu/android/message/a/e;->a:Landroid/view/View;

    .line 484
    const v0, 0x7f0e00a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/message/a/e;->b:Landroid/widget/TextView;

    .line 485
    const v0, 0x7f0e009d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/message/a/e;->c:Landroid/widget/ImageView;

    .line 486
    const v0, 0x7f0e02f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/message/a/e;->d:Landroid/widget/TextView;

    .line 487
    const v0, 0x7f0e0177

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xueqiu/android/message/a/e;->e:Landroid/widget/ProgressBar;

    .line 488
    return-void
.end method
