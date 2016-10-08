.class final Lcom/xueqiu/android/message/d$9$1;
.super Ljava/lang/Object;
.source "TalkListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/d$9;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/Talk;

.field final synthetic b:Lcom/xueqiu/android/message/d$9;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/d$9;Lcom/xueqiu/android/message/model/Talk;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/xueqiu/android/message/d$9$1;->b:Lcom/xueqiu/android/message/d$9;

    iput-object p2, p0, Lcom/xueqiu/android/message/d$9$1;->a:Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 167
    if-nez p2, :cond_1

    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/message/d$9$1;->b:Lcom/xueqiu/android/message/d$9;

    iget-object v0, v0, Lcom/xueqiu/android/message/d$9;->a:Lcom/xueqiu/android/message/d;

    iget-object v1, p0, Lcom/xueqiu/android/message/d$9$1;->a:Lcom/xueqiu/android/message/model/Talk;

    .line 1231
    iget-object v2, v0, Lcom/xueqiu/android/message/d;->c:Lcom/xueqiu/android/message/client/MessageService;

    if-eqz v2, :cond_0

    .line 1232
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 1233
    iget-object v2, v0, Lcom/xueqiu/android/message/d;->c:Lcom/xueqiu/android/message/client/MessageService;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->toMessageSession()Lcom/snowballfinance/messageplatform/data/MessageSession;

    move-result-object v3

    invoke-static {v3}, Lcom/snowballfinance/messageplatform/a/y;->a(Lcom/snowballfinance/messageplatform/data/MessageSession;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/d$3;

    invoke-direct {v3, v0, v1}, Lcom/xueqiu/android/message/d$3;-><init>(Lcom/xueqiu/android/message/d;Lcom/xueqiu/android/message/model/Talk;)V

    .line 1234
    invoke-virtual {v2, v3}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 1251
    :cond_0
    iget-boolean v1, v0, Lcom/xueqiu/android/message/d;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/xueqiu/android/message/d;->a:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/a/z;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1252
    invoke-virtual {v0}, Lcom/xueqiu/android/message/d;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.deleteTalk"

    invoke-static {v0, v1, v4, v4}, Lcom/xueqiu/android/base/util/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 170
    :cond_1
    return-void
.end method
