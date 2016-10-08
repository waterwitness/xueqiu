.class public Lu/a/e;
.super Lu/a/i;
.source "ReportResponse.java"


# instance fields
.field public a:Lu/a/f;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lu/a/i;-><init>(Lorg/json/JSONObject;)V

    .line 22
    const-string v0, "ok"

    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    const-string v0, "ok"

    const-string v1, "success"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    :cond_0
    sget-object v0, Lu/a/f;->a:Lu/a/f;

    iput-object v0, p0, Lu/a/e;->a:Lu/a/f;

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_1
    sget-object v0, Lu/a/f;->b:Lu/a/f;

    iput-object v0, p0, Lu/a/e;->a:Lu/a/f;

    goto :goto_0
.end method
