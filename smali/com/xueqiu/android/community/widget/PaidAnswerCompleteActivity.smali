.class public Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;
.super Lcom/xueqiu/android/common/b;
.source "PaidAnswerCompleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    :pswitch_0
    return-void

    .line 51
    :pswitch_1
    const-string v0, "http://xueqiu.com/wallet/assets"

    invoke-static {v0, p0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 55
    :pswitch_2
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;->finish()V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e024d
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 1066
    iget-object v1, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v1}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/support/v7/a/a;->d()V

    .line 32
    const v1, 0x7f030085

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "amount"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    .line 37
    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, v0, v1

    .line 38
    const v0, 0x7f0e024f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;->j:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v0, 0x7f0e024e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;->k:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;->k:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v0, 0x7f0e024d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;->p:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/PaidAnswerCompleteActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
