.class final Lcom/xueqiu/android/community/WriteStatusActivity$23;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$23;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 409
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$23;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 410
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$23;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$23;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setHintTextColor(I)V

    .line 411
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$23;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v0

    const v1, 0x7f070255

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setHint(I)V

    .line 412
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$23;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z

    .line 413
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$23;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$23;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->d(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V

    .line 414
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$23;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->e(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/model/PaidMention;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$23;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->e(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/model/PaidMention;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PaidMention;->getAmount()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 415
    :goto_0
    const-string v1, "WriteStatusActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initPopupWindow mPaidMentionInfo.getAmount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity$23;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v3}, Lcom/xueqiu/android/community/WriteStatusActivity;->e(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/model/PaidMention;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/PaidMention;->getAmount()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "\u56de\u590d\u6210\u529f\u540e\u5c06\u5f97\u5230\u5bf9\u65b9\u7684\u7ea2\u5305[\u00a5%s]"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$23;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->f(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    return-void

    .line 414
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
