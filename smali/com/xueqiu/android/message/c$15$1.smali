.class final Lcom/xueqiu/android/message/c$15$1;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/c$15;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/Talk;

.field final synthetic b:Lcom/xueqiu/android/message/c$15;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c$15;Lcom/xueqiu/android/message/model/Talk;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/xueqiu/android/message/c$15$1;->b:Lcom/xueqiu/android/message/c$15;

    iput-object p2, p0, Lcom/xueqiu/android/message/c$15$1;->a:Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 567
    if-nez p2, :cond_1

    .line 568
    iget-object v0, p0, Lcom/xueqiu/android/message/c$15$1;->b:Lcom/xueqiu/android/message/c$15;

    iget-object v0, v0, Lcom/xueqiu/android/message/c$15;->a:Lcom/xueqiu/android/message/c;

    iget-object v1, p0, Lcom/xueqiu/android/message/c$15$1;->a:Lcom/xueqiu/android/message/model/Talk;

    .line 1590
    iget-object v2, v0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    .line 2381
    iget-object v2, v2, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    .line 1590
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1592
    iget-object v2, v0, Lcom/xueqiu/android/message/c;->b:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/a/z;->notifyDataSetChanged()V

    .line 1593
    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 1594
    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    .line 1595
    invoke-virtual {v0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 1596
    iget-object v2, v0, Lcom/xueqiu/android/message/c;->e:Lcom/xueqiu/android/message/client/MessageService;

    if-eqz v2, :cond_0

    .line 1597
    iget-object v2, v0, Lcom/xueqiu/android/message/c;->e:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v1}, Lcom/xueqiu/android/message/model/Commands;->updateMessageSession(Lcom/xueqiu/android/message/model/Talk;)Lcom/snowballfinance/messageplatform/a/u;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/a;)V

    .line 1599
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalks(Z)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/c$19;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/c$19;-><init>(Lcom/xueqiu/android/message/c;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/c$18;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/c$18;-><init>(Lcom/xueqiu/android/message/c;)V

    .line 1604
    invoke-virtual {v1, v2}, Lrx/a;->a(Lrx/c/g;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/c$17;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/c$17;-><init>(Lcom/xueqiu/android/message/c;)V

    .line 1609
    invoke-virtual {v1, v2}, Lrx/a;->d(Lrx/c/f;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/c$16;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/c$16;-><init>(Lcom/xueqiu/android/message/c;)V

    .line 1614
    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 570
    :cond_1
    return-void
.end method
