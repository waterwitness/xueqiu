.class final Lcom/xueqiu/android/trade/c/s$33;
.super Ljava/lang/Object;
.source "TradeItemAccountFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/s;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/JsonArray;

.field final synthetic b:Lcom/xueqiu/android/trade/c/s;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/s;Lcom/google/gson/JsonArray;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s$33;->b:Lcom/xueqiu/android/trade/c/s;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/s$33;->a:Lcom/google/gson/JsonArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 2

    .prologue
    .line 561
    packed-switch p2, :pswitch_data_0

    .line 577
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 563
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$33;->a:Lcom/google/gson/JsonArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 564
    if-nez v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$33;->b:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 569
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$33;->a:Lcom/google/gson/JsonArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 2197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 570
    if-nez v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$33;->b:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
