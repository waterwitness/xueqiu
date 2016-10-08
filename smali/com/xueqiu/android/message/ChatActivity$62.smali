.class final Lcom/xueqiu/android/message/ChatActivity$62;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1893
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$62;->b:Lcom/xueqiu/android/message/ChatActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/ChatActivity$62;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$62;->a:Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1897
    if-eqz v0, :cond_1

    .line 1898
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1899
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/imagepicker/c;

    .line 2034
    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/c;->d:Ljava/lang/String;

    .line 1900
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1903
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$62;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->e(Ljava/util/List;)V

    .line 1905
    :cond_1
    return-void
.end method
