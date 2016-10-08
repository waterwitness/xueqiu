.class final Lcom/xueqiu/android/cube/CubeActivity$30;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->a(J)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/gson/JsonObject;

.field final synthetic c:J

.field final synthetic d:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Landroid/view/View;Lcom/google/gson/JsonObject;J)V
    .locals 0

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->d:Lcom/xueqiu/android/cube/CubeActivity;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->b:Lcom/google/gson/JsonObject;

    iput-wide p4, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1544
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->d:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->A(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 1545
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->b:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_0

    .line 1546
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->b:Lcom/google/gson/JsonObject;

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->d:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-wide v4, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1547
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->d:Lcom/xueqiu/android/cube/CubeActivity;

    const-string v1, "cube_report_read_information"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->b:Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->d:Lcom/xueqiu/android/cube/CubeActivity;

    iget-wide v2, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->c:J

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;J)V

    .line 1550
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x579

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1551
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$30;->d:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1552
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1553
    return-void
.end method
