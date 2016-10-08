.class final Lcom/xueqiu/android/common/SearchNameCardActivity$4;
.super Lcom/xueqiu/android/base/b/p;
.source "SearchNameCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/SearchNameCardActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/SearchNameCardActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/SearchNameCardActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$4;->a:Lcom/xueqiu/android/common/SearchNameCardActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 129
    check-cast p1, Ljava/util/List;

    .line 1136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1137
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->saveSimpleUsers(Ljava/util/List;)V

    .line 1138
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$4;->a:Lcom/xueqiu/android/common/SearchNameCardActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->b(Lcom/xueqiu/android/common/SearchNameCardActivity;)Lcom/xueqiu/android/message/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/a/a;->a(Ljava/util/List;)V

    .line 129
    :cond_0
    return-void
.end method
