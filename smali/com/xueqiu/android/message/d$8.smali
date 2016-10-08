.class final Lcom/xueqiu/android/message/d$8;
.super Ljava/lang/Object;
.source "TalkListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/d;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/d;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/xueqiu/android/message/d$8;->a:Lcom/xueqiu/android/message/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/message/d$8;->a:Lcom/xueqiu/android/message/d;

    invoke-static {v0}, Lcom/xueqiu/android/message/d;->a(Lcom/xueqiu/android/message/d;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/message/a/z;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 151
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/message/d$8;->a:Lcom/xueqiu/android/message/d;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/d;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const-string v2, "talk"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/message/d$8;->a:Lcom/xueqiu/android/message/d;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/d;->a(Landroid/content/Intent;)V

    .line 154
    return-void
.end method
