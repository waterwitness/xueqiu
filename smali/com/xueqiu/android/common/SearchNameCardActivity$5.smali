.class final Lcom/xueqiu/android/common/SearchNameCardActivity$5;
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
        "Ljava/util/ArrayList",
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
    .line 158
    iput-object p1, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$5;->a:Lcom/xueqiu/android/common/SearchNameCardActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$5;->a:Lcom/xueqiu/android/common/SearchNameCardActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/common/SearchNameCardActivity;->a(Lcom/xueqiu/android/common/SearchNameCardActivity;Ljava/util/ArrayList;Ljava/lang/Exception;)V

    .line 168
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 158
    check-cast p1, Ljava/util/ArrayList;

    .line 1162
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity$5;->a:Lcom/xueqiu/android/common/SearchNameCardActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/common/SearchNameCardActivity;->a(Lcom/xueqiu/android/common/SearchNameCardActivity;Ljava/util/ArrayList;Ljava/lang/Exception;)V

    .line 158
    return-void
.end method
