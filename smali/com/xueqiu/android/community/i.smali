.class public Lcom/xueqiu/android/community/i;
.super Ljava/lang/Object;
.source "RecentlyMentionedManager.java"


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Lcom/xueqiu/android/community/i;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/gson/Gson;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/xueqiu/android/community/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/community/i;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/i;->e:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/i;->a:Ljava/util/List;

    .line 1035
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/i;->b:Lcom/google/gson/Gson;

    .line 1074
    const-string v0, "recently_mentioned_user"

    const/4 v1, 0x0

    .line 1075
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 1074
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    iget-object v1, p0, Lcom/xueqiu/android/community/i;->b:Lcom/google/gson/Gson;

    new-instance v2, Lcom/xueqiu/android/community/i$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/i$1;-><init>(Lcom/xueqiu/android/community/i;)V

    .line 1077
    invoke-virtual {v2}, Lcom/xueqiu/android/community/i$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1076
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/xueqiu/android/community/i;->b:Lcom/google/gson/Gson;

    new-instance v2, Lcom/xueqiu/android/community/i$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/i$2;-><init>(Lcom/xueqiu/android/community/i;)V

    .line 1079
    invoke-virtual {v2}, Lcom/xueqiu/android/community/i$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1078
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/xueqiu/android/community/i;->e:Ljava/util/List;

    .line 1037
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/i;->b()Ljava/util/List;

    .line 32
    return-void

    .line 1081
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/i;->e:Ljava/util/List;

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/xueqiu/android/community/i;
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/xueqiu/android/community/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xueqiu/android/community/i;->d:Lcom/xueqiu/android/community/i;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/xueqiu/android/community/i;

    invoke-direct {v0}, Lcom/xueqiu/android/community/i;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/i;->d:Lcom/xueqiu/android/community/i;

    .line 44
    :cond_0
    sget-object v0, Lcom/xueqiu/android/community/i;->d:Lcom/xueqiu/android/community/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/i;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/community/i;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/community/i;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2069
    const-string v0, "recently_mentioned_user"

    iget-object v1, p0, Lcom/xueqiu/android/community/i;->b:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/xueqiu/android/community/i;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2070
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 2069
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/i;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/community/i;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 108
    const-string v0, "recently_mentioned_stock"

    const/4 v1, 0x0

    .line 109
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 108
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/xueqiu/android/community/i;->b:Lcom/google/gson/Gson;

    new-instance v2, Lcom/xueqiu/android/community/i$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/i$3;-><init>(Lcom/xueqiu/android/community/i;)V

    .line 111
    invoke-virtual {v2}, Lcom/xueqiu/android/community/i$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 110
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/xueqiu/android/community/i;->b:Lcom/google/gson/Gson;

    new-instance v2, Lcom/xueqiu/android/community/i$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/i$4;-><init>(Lcom/xueqiu/android/community/i;)V

    .line 113
    invoke-virtual {v2}, Lcom/xueqiu/android/community/i$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 112
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/xueqiu/android/community/i;->a:Ljava/util/List;

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/i;->a:Ljava/util/List;

    return-object v0

    .line 115
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/i;->a:Ljava/util/List;

    goto :goto_0
.end method
