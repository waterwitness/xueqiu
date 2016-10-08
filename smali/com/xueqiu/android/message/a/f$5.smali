.class final Lcom/xueqiu/android/message/a/f$5;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/f;->a(Lcom/xueqiu/android/message/model/Message;Lcom/xueqiu/android/message/ChatActivity;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;

.field final synthetic b:Lcom/xueqiu/android/message/model/Message;

.field final synthetic c:Lcom/xueqiu/android/message/a/f;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/f;Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/xueqiu/android/message/a/f$5;->c:Lcom/xueqiu/android/message/a/f;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/f$5;->a:Lcom/xueqiu/android/message/ChatActivity;

    iput-object p3, p0, Lcom/xueqiu/android/message/a/f$5;->b:Lcom/xueqiu/android/message/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 761
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/f$5;->a:Lcom/xueqiu/android/message/ChatActivity;

    const-class v2, Lcom/xueqiu/android/common/ImageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 762
    const-string v1, "url"

    iget-object v2, p0, Lcom/xueqiu/android/message/a/f$5;->b:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    iget-object v1, p0, Lcom/xueqiu/android/message/a/f$5;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/ChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 764
    iget-object v0, p0, Lcom/xueqiu/android/message/a/f$5;->a:Lcom/xueqiu/android/message/ChatActivity;

    const v1, 0x7f040007

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/message/ChatActivity;->overridePendingTransition(II)V

    .line 765
    return-void
.end method
