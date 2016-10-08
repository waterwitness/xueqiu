.class final Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;
.super Ljava/lang/Object;
.source "InvestmentCalEventAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 578
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 616
    :goto_0
    :pswitch_0
    return-void

    .line 580
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;I)V

    goto :goto_0

    .line 583
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    const v1, 0x7f0e035a

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;I)V

    goto :goto_0

    .line 586
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    const v1, 0x7f0e035c

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;I)V

    goto :goto_0

    .line 589
    :pswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    const v1, 0x7f0e061f

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 592
    :pswitch_5
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    .line 1830
    iput v4, v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->k:I

    .line 1831
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->k()V

    goto :goto_0

    .line 595
    :pswitch_6
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    .line 1835
    const/4 v1, 0x2

    iput v1, v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->k:I

    .line 1836
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->k()V

    goto :goto_0

    .line 598
    :pswitch_7
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    .line 1840
    iput v1, v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->k:I

    .line 1841
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->k()V

    goto :goto_0

    .line 601
    :pswitch_8
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    .line 1998
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->j:Landroid/content/Context;

    const-class v3, Lcom/xueqiu/android/stock/SearchStockActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1999
    invoke-virtual {v0, v1, v4}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 604
    :pswitch_9
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->j()V

    goto :goto_0

    .line 607
    :pswitch_a
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    .line 2853
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2854
    const v2, 0x7f07002a

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700b1

    new-instance v3, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$2;

    invoke-direct {v3, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$2;-><init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    const/4 v2, 0x0

    .line 2859
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 610
    :pswitch_b
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)V

    goto/16 :goto_0

    .line 613
    :pswitch_c
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$8;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    const v1, 0x7f0e0630

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e061a
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
