.class final Lcom/xueqiu/android/community/WriteStatusActivity$2;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$2;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 597
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$2;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->l(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    const-string v0, "WriteStatusActivity"

    const-string v1, "send button onClick isFastDoubleClick"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 1132
    iget-object v0, v0, Lcom/xueqiu/android/base/f;->c:Lcom/xueqiu/android/common/model/ClientInfo;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ClientInfo;->isMonkeyTestVersion()Z

    move-result v0

    .line 603
    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$2;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$2;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    .line 609
    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->m(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$2;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    .line 610
    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->n(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 612
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$2;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->n(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$2;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x8c

    if-le v0, v1, :cond_4

    .line 613
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$2;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    const v1, 0x7f07043e

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$2;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->o(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 616
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$2;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->p(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$2;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->d(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xc1c

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 620
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_0

    .line 624
    :cond_5
    const v0, 0x7f07028d

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto/16 :goto_0
.end method
