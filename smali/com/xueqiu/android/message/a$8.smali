.class final Lcom/xueqiu/android/message/a$8;
.super Lcom/xueqiu/android/base/b/p;
.source "GroupProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/xueqiu/android/message/a$8;->a:Lcom/xueqiu/android/message/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 174
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 175
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 171
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 1179
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    .line 1180
    iget-object v0, p0, Lcom/xueqiu/android/message/a$8;->a:Lcom/xueqiu/android/message/a;

    invoke-static {v0}, Lcom/xueqiu/android/message/a;->c(Lcom/xueqiu/android/message/a;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/model/IMGroup;->setMaster(Lcom/xueqiu/android/community/model/User;)V

    .line 1181
    iget-object v0, p0, Lcom/xueqiu/android/message/a$8;->a:Lcom/xueqiu/android/message/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/xueqiu/android/message/a$8;->a:Lcom/xueqiu/android/message/a;

    invoke-static {v0}, Lcom/xueqiu/android/message/a;->d(Lcom/xueqiu/android/message/a;)V

    .line 171
    :cond_0
    return-void
.end method
