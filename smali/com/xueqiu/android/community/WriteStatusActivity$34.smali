.class final Lcom/xueqiu/android/community/WriteStatusActivity$34;
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
    .line 421
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$34;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 424
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$34;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 425
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$34;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$34;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setHintTextColor(I)V

    .line 426
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$34;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v0

    const v1, 0x7f0702e6

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setHint(I)V

    .line 427
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$34;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0, v3}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z

    .line 428
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$34;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$34;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->d(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V

    .line 429
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "\u62d2\u7edd\u6536\u53d6\u7ea2\u5305,\u5e76\u9000\u8fd8\u7ed9\u5bf9\u65b9"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$34;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->f(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    return-void
.end method
