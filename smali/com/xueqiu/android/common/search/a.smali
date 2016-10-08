.class public Lcom/xueqiu/android/common/search/a;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Lcom/xueqiu/android/common/search/a;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/xueqiu/android/common/search/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/common/search/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/a;->d:Lcom/google/gson/Gson;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/a;->b:Ljava/util/List;

    .line 1034
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/a;->c()Ljava/util/List;

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lcom/xueqiu/android/common/search/a;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/xueqiu/android/common/search/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xueqiu/android/common/search/a;->c:Lcom/xueqiu/android/common/search/a;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/xueqiu/android/common/search/a;

    invoke-direct {v0}, Lcom/xueqiu/android/common/search/a;-><init>()V

    sput-object v0, Lcom/xueqiu/android/common/search/a;->c:Lcom/xueqiu/android/common/search/a;

    .line 41
    :cond_0
    sget-object v0, Lcom/xueqiu/android/common/search/a;->c:Lcom/xueqiu/android/common/search/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 68
    const-string v0, "search_history"

    iget-object v1, p0, Lcom/xueqiu/android/common/search/a;->d:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/xueqiu/android/common/search/a;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 68
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    const-string v0, "search_history"

    const/4 v1, 0x0

    .line 88
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 87
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/xueqiu/android/common/search/a;->d:Lcom/google/gson/Gson;

    new-instance v2, Lcom/xueqiu/android/common/search/a$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/search/a$1;-><init>(Lcom/xueqiu/android/common/search/a;)V

    .line 90
    invoke-virtual {v2}, Lcom/xueqiu/android/common/search/a$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 89
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/xueqiu/android/common/search/a;->d:Lcom/google/gson/Gson;

    new-instance v2, Lcom/xueqiu/android/common/search/a$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/search/a$2;-><init>(Lcom/xueqiu/android/common/search/a;)V

    .line 92
    invoke-virtual {v2}, Lcom/xueqiu/android/common/search/a$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 91
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/a;->b:Ljava/util/List;

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/a;->b:Ljava/util/List;

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/a;->b:Ljava/util/List;

    goto :goto_0
.end method
