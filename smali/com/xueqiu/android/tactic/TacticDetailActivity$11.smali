.class final Lcom/xueqiu/android/tactic/TacticDetailActivity$11;
.super Lcom/xueqiu/android/base/b/p;
.source "TacticDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/TacticDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/TacticDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$11;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 311
    check-cast p1, Lorg/json/JSONObject;

    .line 1319
    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1320
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$11;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->a(Lcom/xueqiu/android/tactic/TacticDetailActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    :goto_0
    return-void

    .line 1322
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
