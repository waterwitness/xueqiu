.class final Lcom/xueqiu/android/base/util/m$2;
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
        "Lcom/xueqiu/android/stock/model/StockStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    .line 1069
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockStatus;->fromInt(I)Lcom/xueqiu/android/stock/model/StockStatus;

    move-result-object v0

    .line 66
    return-object v0
.end method
