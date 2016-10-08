.class final Lcom/xueqiu/android/trade/c/e$28;
.super Ljava/lang/Object;
.source "OrderFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/e;->a(Landroid/widget/EditText;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/xueqiu/android/trade/c/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/e;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/e$28;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->an(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->r(Lcom/xueqiu/android/trade/c/e;)V

    .line 1417
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->ao(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/b;->c()V

    .line 1418
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->U(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->ac(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1419
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->al(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1421
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07045d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/e;->J(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1423
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->ap(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->a(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1426
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->J(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 1429
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->J(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1409
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->ai(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/e;->U(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1387
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->aj(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4ed3\u4f4d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->ak(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/b;->c()V

    .line 1390
    if-nez p4, :cond_3

    .line 1391
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->al(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->C(Lcom/xueqiu/android/trade/c/e;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1395
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->am(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->a(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1398
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->J(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 1401
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$28;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->J(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method
