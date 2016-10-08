.class final Lcom/xueqiu/android/community/d$7;
.super Lcom/xueqiu/android/base/b/p;
.source "FindPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/community/model/IndustryOfUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/xueqiu/android/community/d$7;->a:Lcom/xueqiu/android/community/d;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xueqiu/android/community/d$7;->a:Lcom/xueqiu/android/community/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xueqiu/android/community/d;->a(Ljava/util/List;Ljava/lang/Exception;)V

    .line 311
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 307
    check-cast p1, Ljava/util/List;

    .line 1315
    iget-object v0, p0, Lcom/xueqiu/android/community/d$7;->a:Lcom/xueqiu/android/community/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xueqiu/android/community/d;->a(Ljava/util/List;Ljava/lang/Exception;)V

    .line 307
    return-void
.end method
