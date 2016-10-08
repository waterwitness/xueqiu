.class final Lcom/xueqiu/android/trade/c/e$13;
.super Ljava/lang/Object;
.source "OrderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/e;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->C(Lcom/xueqiu/android/trade/c/e;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 478
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->D(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0, v2}, Lcom/xueqiu/android/trade/b/b;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->C(Lcom/xueqiu/android/trade/c/e;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->E(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/b;->e()V

    goto :goto_0

    .line 483
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->F(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/b;->j()V

    goto :goto_0

    .line 486
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->G(Lcom/xueqiu/android/trade/c/e;)I

    .line 487
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->H(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->H(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->I(Lcom/xueqiu/android/trade/c/e;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 504
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->K(Lcom/xueqiu/android/trade/c/e;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e04f0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 490
    :sswitch_0
    const-string v2, "BUY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "SELL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v2, "BUY_COVER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "SELL_SHORT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    .line 492
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->J(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 495
    :pswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->J(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 498
    :pswitch_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->J(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 501
    :pswitch_6
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->J(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/e;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 507
    :pswitch_7
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->L(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/b;->h()V

    goto/16 :goto_0

    .line 510
    :pswitch_8
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$13;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->M(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/b;->h()V

    goto/16 :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
    .end packed-switch

    .line 490
    :sswitch_data_0
    .sparse-switch
        -0x3e9b2382 -> :sswitch_2
        0x10266 -> :sswitch_0
        0x26c752 -> :sswitch_1
        0x5c44712f -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
