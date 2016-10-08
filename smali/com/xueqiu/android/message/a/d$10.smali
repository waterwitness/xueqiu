.class final Lcom/xueqiu/android/message/a/d$10;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/a/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/message/a/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/xueqiu/android/message/a/d$10;->b:Lcom/xueqiu/android/message/a/d;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/d$10;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 437
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d$10;->b:Lcom/xueqiu/android/message/a/d;

    invoke-static {v0}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/ChatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/a/d$10;->a:Lcom/xueqiu/android/community/model/User;

    .line 2949
    iget-object v2, v0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getSelectionStart()I

    move-result v2

    .line 2950
    iget-object v0, v0, Lcom/xueqiu/android/message/ChatActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallEditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 2951
    const-string v3, "@%s "

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 438
    return v6
.end method
