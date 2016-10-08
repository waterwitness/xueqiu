.class final Lcom/xueqiu/android/cube/CubeActivity$21;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;J)V
    .locals 0

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$21;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iput-wide p2, p0, Lcom/xueqiu/android/cube/CubeActivity$21;->a:J

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 1245
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1246
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1242
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 2250
    const-string v0, "updateTime"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "updateTime"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xueqiu/android/cube/CubeActivity$21;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2251
    const-string v0, "updateTime"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    .line 2252
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$21;->b:Lcom/xueqiu/android/cube/CubeActivity;

    const-string v3, "cube_rank_config"

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$21;->b:Lcom/xueqiu/android/cube/CubeActivity;

    const-string v3, "cube_rank_config_update"

    invoke-static {v2, v3, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 2254
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$21;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$21;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->b(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/Cube;)V

    .line 1242
    :cond_0
    return-void
.end method
