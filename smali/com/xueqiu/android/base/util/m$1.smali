.class final Lcom/xueqiu/android/base/util/m$1;
.super Ljava/lang/Object;
.source "Gsons.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/xueqiu/android/common/model/parser/UserParser;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/xueqiu/android/common/model/parser/UserParser;

    invoke-direct {v0}, Lcom/xueqiu/android/common/model/parser/UserParser;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/util/m$1;->a:Lcom/xueqiu/android/common/model/parser/UserParser;

    return-void
.end method

.method private a(Lcom/google/gson/JsonElement;)Lcom/xueqiu/android/community/model/User;
    .locals 3

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/util/m$1;->a:Lcom/xueqiu/android/common/model/parser/UserParser;

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/parser/UserParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/User;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "Gsons"

    const-string v2, "deserialize user failed."

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/xueqiu/android/base/util/m$1;->a(Lcom/google/gson/JsonElement;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    return-object v0
.end method
