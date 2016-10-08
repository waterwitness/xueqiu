.class public Lcom/xueqiu/android/base/util/ak;
.super Landroid/text/style/URLSpan;
.source "SNBHtmlUtil.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 449
    iput p2, p0, Lcom/xueqiu/android/base/util/ak;->a:I

    .line 450
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/xueqiu/android/base/util/ak;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 468
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 455
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 457
    const/16 v0, 0xc0

    const/16 v1, 0xa2

    const/16 v2, 0x6f

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 458
    invoke-virtual {p0}, Lcom/xueqiu/android/base/util/ak;->getURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "paid_mention=1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    iput v0, p0, Lcom/xueqiu/android/base/util/ak;->a:I

    .line 462
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/base/util/ak;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 463
    return-void
.end method
