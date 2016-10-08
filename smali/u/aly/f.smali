.class public final Lu/aly/f;
.super Lu/aly/cr;
.source "UPage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lu/aly/cr;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lu/aly/cr;-><init>()V

    .line 22
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1028
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1162
    iput-object v1, p0, Lu/aly/cr;->a:Ljava/lang/String;

    .line 1029
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 1186
    iput-wide v0, p0, Lu/aly/cr;->b:J

    .line 1187
    invoke-virtual {p0}, Lu/aly/cr;->a()V

    .line 25
    return-void
.end method
