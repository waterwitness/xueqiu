.class final Lcom/xueqiu/android/community/m$1;
.super Lcom/xueqiu/android/base/b/p;
.source "TopicDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/m;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/PagedGroup",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/n;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xueqiu/android/community/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/m;Lcom/xueqiu/android/community/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/xueqiu/android/community/m$1;->d:Lcom/xueqiu/android/community/m;

    iput-object p2, p0, Lcom/xueqiu/android/community/m$1;->a:Lcom/xueqiu/android/community/n;

    iput-object p3, p0, Lcom/xueqiu/android/community/m$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xueqiu/android/community/m$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/community/m$1;->a:Lcom/xueqiu/android/community/n;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/community/m$1;->a:Lcom/xueqiu/android/community/n;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/community/n;->a(Lcom/android/volley/y;)V

    .line 88
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 82
    check-cast p1, Lcom/xueqiu/android/common/model/PagedGroup;

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xueqiu/android/community/m$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/m$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    .line 1094
    iget-object v0, p0, Lcom/xueqiu/android/community/m$1;->d:Lcom/xueqiu/android/community/m;

    iget-object v1, p0, Lcom/xueqiu/android/community/m$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/community/m$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/xueqiu/android/community/m;->a(Lcom/xueqiu/android/community/m;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/common/model/PagedGroup;)Lcom/xueqiu/android/common/model/PagedGroup;

    move-result-object v0

    .line 1095
    iget-object v1, p0, Lcom/xueqiu/android/community/m$1;->a:Lcom/xueqiu/android/community/n;

    if-eqz v1, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/xueqiu/android/community/m$1;->a:Lcom/xueqiu/android/community/n;

    invoke-interface {v1, v0}, Lcom/xueqiu/android/community/n;->a(Lcom/xueqiu/android/common/model/PagedGroup;)V

    .line 82
    :cond_0
    return-void
.end method
