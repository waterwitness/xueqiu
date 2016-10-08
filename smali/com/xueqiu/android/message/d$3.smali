.class final Lcom/xueqiu/android/message/d$3;
.super Ljava/lang/Object;
.source "TalkListFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/d;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/snowballfinance/messageplatform/a/z;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/Talk;

.field final synthetic b:Lcom/xueqiu/android/message/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/d;Lcom/xueqiu/android/message/model/Talk;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/xueqiu/android/message/d$3;->b:Lcom/xueqiu/android/message/d;

    iput-object p2, p0, Lcom/xueqiu/android/message/d$3;->a:Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 234
    check-cast p1, Lcom/snowballfinance/messageplatform/a/z;

    .line 2074
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 1237
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1238
    const-string v0, "\u5220\u9664\u5bf9\u8bdd\u6210\u529f"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/xueqiu/android/message/d$3;->b:Lcom/xueqiu/android/message/d;

    invoke-static {v0}, Lcom/xueqiu/android/message/d;->a(Lcom/xueqiu/android/message/d;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    .line 2381
    iget-object v0, v0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    .line 1239
    iget-object v1, p0, Lcom/xueqiu/android/message/d$3;->a:Lcom/xueqiu/android/message/model/Talk;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1240
    iget-object v0, p0, Lcom/xueqiu/android/message/d$3;->b:Lcom/xueqiu/android/message/d;

    invoke-static {v0}, Lcom/xueqiu/android/message/d;->a(Lcom/xueqiu/android/message/d;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/z;->notifyDataSetChanged()V

    .line 1241
    iget-object v0, p0, Lcom/xueqiu/android/message/d$3;->a:Lcom/xueqiu/android/message/model/Talk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 1242
    iget-object v0, p0, Lcom/xueqiu/android/message/d$3;->b:Lcom/xueqiu/android/message/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/d;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/d$3;->a:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    :goto_0
    return-void

    .line 1244
    :cond_0
    const-string v0, "\u5220\u9664\u5bf9\u8bdd\u5931\u8d25"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/xueqiu/android/message/d$3;->a:Lcom/xueqiu/android/message/model/Talk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 1246
    iget-object v0, p0, Lcom/xueqiu/android/message/d$3;->b:Lcom/xueqiu/android/message/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/d;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/d$3;->a:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    goto :goto_0
.end method
