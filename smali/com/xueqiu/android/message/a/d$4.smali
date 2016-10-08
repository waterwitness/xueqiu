.class final Lcom/xueqiu/android/message/a/d$4;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 961
    iput-object p1, p0, Lcom/xueqiu/android/message/a/d$4;->b:Lcom/xueqiu/android/message/a/d;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/d$4;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 965
    packed-switch p2, :pswitch_data_0

    .line 975
    :goto_0
    return-void

    .line 967
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d$4;->b:Lcom/xueqiu/android/message/a/d;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/d$4;->a:Lcom/xueqiu/android/community/model/User;

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/a/d;->b(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/community/model/User;)V

    goto :goto_0

    .line 970
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/d$4;->b:Lcom/xueqiu/android/message/a/d;

    invoke-static {v1}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/ChatActivity;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 971
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/message/a/d$4;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 972
    iget-object v1, p0, Lcom/xueqiu/android/message/a/d$4;->b:Lcom/xueqiu/android/message/a/d;

    invoke-static {v1}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/ChatActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/ChatActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
