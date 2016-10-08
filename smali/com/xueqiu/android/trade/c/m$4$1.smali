.class final Lcom/xueqiu/android/trade/c/m$4$1;
.super Ljava/lang/Object;
.source "TakingPositionFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/m$4;->a(Landroid/view/MenuItem;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/m$4;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/m$4;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/m$4$1;->a:Lcom/xueqiu/android/trade/c/m$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 322
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$4$1;->a:Lcom/xueqiu/android/trade/c/m$4;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/m$4;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/m;->d(Lcom/xueqiu/android/trade/c/m;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$4$1;->a:Lcom/xueqiu/android/trade/c/m$4;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/m$4;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/m;->d(Lcom/xueqiu/android/trade/c/m;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$4$1;->a:Lcom/xueqiu/android/trade/c/m$4;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/m$4;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/m;->e(Lcom/xueqiu/android/trade/c/m;)Lcom/android/volley/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$4$1;->a:Lcom/xueqiu/android/trade/c/m$4;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/m$4;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/m;->e(Lcom/xueqiu/android/trade/c/m;)Lcom/android/volley/n;

    move-result-object v0

    .line 1336
    iget-boolean v0, v0, Lcom/android/volley/n;->h:Z

    .line 326
    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$4$1;->a:Lcom/xueqiu/android/trade/c/m$4;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/m$4;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/m;->e(Lcom/xueqiu/android/trade/c/m;)Lcom/android/volley/n;

    move-result-object v0

    .line 2329
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/volley/n;->h:Z

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$4$1;->a:Lcom/xueqiu/android/trade/c/m$4;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/m$4;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/m;->b(Lcom/xueqiu/android/trade/c/m;Ljava/lang/String;)V

    .line 333
    :cond_2
    :goto_0
    return-void

    .line 330
    :cond_3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$4$1;->a:Lcom/xueqiu/android/trade/c/m$4;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/m$4;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/m;->d(Lcom/xueqiu/android/trade/c/m;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method
