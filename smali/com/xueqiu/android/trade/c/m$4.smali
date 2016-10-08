.class final Lcom/xueqiu/android/trade/c/m$4;
.super Ljava/lang/Object;
.source "TakingPositionFragment.java"

# interfaces
.implements Landroid/support/v4/view/ap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/m;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/m;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/m$4;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 306
    invoke-static {p1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 307
    const v1, 0x7f070355

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 308
    new-instance v1, Lcom/xueqiu/android/trade/c/m$4$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/m$4$1;-><init>(Lcom/xueqiu/android/trade/c/m$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 335
    new-instance v1, Lcom/xueqiu/android/trade/c/m$4$2;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/trade/c/m$4$2;-><init>(Lcom/xueqiu/android/trade/c/m$4;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$4;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/m;->f(Lcom/xueqiu/android/trade/c/m;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    invoke-static {p1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 350
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 351
    const/4 v0, 0x1

    return v0
.end method
