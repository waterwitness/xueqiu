.class public final Lcom/xueqiu/android/base/util/an;
.super Ljava/lang/Object;
.source "SNBToast.java"


# static fields
.field static a:Landroid/widget/Toast;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 1030
    invoke-static {}, Lcom/xueqiu/android/base/util/an;->a()V

    .line 1031
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1032
    sput-object v1, Lcom/xueqiu/android/base/util/an;->a:Landroid/widget/Toast;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->e(Landroid/content/Context;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 1033
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030229

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1034
    const v0, 0x7f0e077e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/base/util/an;->b:Landroid/widget/ImageView;

    .line 1035
    const v0, 0x7f0e077f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/base/util/an;->c:Landroid/widget/TextView;

    .line 1036
    sget-object v0, Lcom/xueqiu/android/base/util/an;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 27
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/xueqiu/android/base/util/an;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xueqiu/android/base/util/an;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/xueqiu/android/base/util/an;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/util/an;->a:Landroid/widget/Toast;

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/xueqiu/android/base/util/an;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/xueqiu/android/base/util/an;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 69
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/xueqiu/android/base/util/an;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/base/util/an;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-object p0
.end method
