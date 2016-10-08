.class final Lcom/xueqiu/android/message/ChatActivity$22;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->n()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 1

    .prologue
    .line 875
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/message/ChatActivity$22;->b:Z

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .prologue
    const/16 v1, 0x9c4

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 890
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 891
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 892
    const-string v0, "\u8d85\u51fa\u5b57\u6570\u4e0a\u9650\uff0c2500\u5b57\u4ee5\u540e\u90e8\u5206\u88ab\u622a\u65ad"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 895
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.sendTyping"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 896
    const-string v1, "extra_talk"

    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v2}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 897
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->k(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->k(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/xueqiu/android/message/ChatActivity$22;->b:Z

    if-nez v1, :cond_2

    .line 898
    iput-boolean v4, p0, Lcom/xueqiu/android/message/ChatActivity$22;->b:Z

    .line 899
    const-string v1, "extra_typing_bool"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 900
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->k(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 907
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->k(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->k(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 908
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->t(Lcom/xueqiu/android/message/ChatActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 909
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->u(Lcom/xueqiu/android/message/ChatActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 914
    :goto_1
    return-void

    .line 901
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->k(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->k(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 902
    :cond_3
    iput-boolean v3, p0, Lcom/xueqiu/android/message/ChatActivity$22;->b:Z

    .line 903
    const-string v1, "extra_typing_bool"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 904
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->k(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 911
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->t(Lcom/xueqiu/android/message/ChatActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$22;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->u(Lcom/xueqiu/android/message/ChatActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 879
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 884
    return-void
.end method
