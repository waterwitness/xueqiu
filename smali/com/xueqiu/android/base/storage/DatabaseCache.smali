.class public Lcom/xueqiu/android/base/storage/DatabaseCache;
.super Ljava/lang/Object;
.source "DatabaseCache.java"


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x32

.field public static final TAG:Ljava/lang/String; = "DatabaseCache"

.field private static instance:Lcom/xueqiu/android/base/storage/DatabaseCache;


# instance fields
.field private groupLRUCache:Lcom/xueqiu/android/base/util/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/base/util/t",
            "<",
            "Ljava/lang/Long;",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;"
        }
    .end annotation
.end field

.field private userLRUCache:Lcom/xueqiu/android/base/util/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/base/util/t",
            "<",
            "Ljava/lang/Long;",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/storage/DatabaseCache;->instance:Lcom/xueqiu/android/base/storage/DatabaseCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/xueqiu/android/base/util/t;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/t;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->userLRUCache:Lcom/xueqiu/android/base/util/t;

    .line 31
    new-instance v0, Lcom/xueqiu/android/base/util/t;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/t;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->groupLRUCache:Lcom/xueqiu/android/base/util/t;

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/xueqiu/android/base/storage/DatabaseCache;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/xueqiu/android/base/storage/DatabaseCache;->instance:Lcom/xueqiu/android/base/storage/DatabaseCache;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/xueqiu/android/base/storage/DatabaseCache;

    invoke-direct {v0}, Lcom/xueqiu/android/base/storage/DatabaseCache;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/storage/DatabaseCache;->instance:Lcom/xueqiu/android/base/storage/DatabaseCache;

    .line 40
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/storage/DatabaseCache;->instance:Lcom/xueqiu/android/base/storage/DatabaseCache;

    return-object v0
.end method


# virtual methods
.method public cacheIMGroup(Lcom/xueqiu/android/message/model/IMGroup;)Lcom/xueqiu/android/message/model/IMGroup;
    .locals 4

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    const/4 p1, 0x0

    .line 118
    :goto_0
    return-object p1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->groupLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xueqiu/android/base/util/t;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public cacheIMGroups(Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 123
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->groupLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/xueqiu/android/base/util/t;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_0
    return-object p1
.end method

.method public cacheUser(Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;
    .locals 4

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const/4 p1, 0x0

    .line 73
    :goto_0
    return-object p1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->userLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xueqiu/android/base/util/t;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public cacheUsers(Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 63
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->userLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/xueqiu/android/base/util/t;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_0
    return-object p1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->userLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/util/t;->a()V

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->groupLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/util/t;->a()V

    .line 131
    return-void
.end method

.method public getIMGroup(Ljava/lang/Long;)Lcom/xueqiu/android/message/model/IMGroup;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->groupLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/util/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    return-object v0
.end method

.method public getIMGroups(Ljava/util/Set;)Lcom/xueqiu/android/base/storage/ResultSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/xueqiu/android/base/storage/ResultSet",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 92
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 93
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 94
    iget-object v4, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->groupLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v4, v0}, Lcom/xueqiu/android/base/util/t;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->groupLRUCache:Lcom/xueqiu/android/base/util/t;

    iget-object v5, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->groupLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v5, v0}, Lcom/xueqiu/android/base/util/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/xueqiu/android/base/util/t;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Lcom/xueqiu/android/base/storage/ResultSet;

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/base/storage/ResultSet;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public getUser(Ljava/lang/Long;)Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->userLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/util/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public getUsers(Ljava/util/Set;)Lcom/xueqiu/android/base/storage/ResultSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/xueqiu/android/base/storage/ResultSet",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 49
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 50
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 51
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 53
    iget-object v4, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->userLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v4, v0}, Lcom/xueqiu/android/base/util/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 54
    iget-object v4, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->userLRUCache:Lcom/xueqiu/android/base/util/t;

    iget-object v5, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->userLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v5, v0}, Lcom/xueqiu/android/base/util/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/xueqiu/android/base/util/t;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Lcom/xueqiu/android/base/storage/ResultSet;

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/base/storage/ResultSet;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public invalidIMGroup(Ljava/lang/Long;)Lcom/xueqiu/android/message/model/IMGroup;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->groupLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/util/t;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    return-object v0
.end method

.method public invalidIMGroups(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 109
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->groupLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/util/t;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public invalidUser(Ljava/lang/Long;)Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->userLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/util/t;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public invalidUsers(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 82
    iget-object v2, p0, Lcom/xueqiu/android/base/storage/DatabaseCache;->userLRUCache:Lcom/xueqiu/android/base/util/t;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/util/t;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method
