.class public final Lcom/b/a/a/g;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/g;->a:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "^[a-zA-Z][a-zA-Z0-9_]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/g;->b:Ljava/util/regex/Pattern;

    .line 513
    new-instance v0, Lcom/b/a/a/g$1;

    invoke-direct {v0}, Lcom/b/a/a/g$1;-><init>()V

    sput-object v0, Lcom/b/a/a/g;->c:Ljava/lang/ThreadLocal;

    .line 520
    new-instance v0, Lcom/b/a/a/g$2;

    invoke-direct {v0}, Lcom/b/a/a/g$2;-><init>()V

    sput-object v0, Lcom/b/a/a/g;->d:Ljava/lang/ThreadLocal;

    .line 525
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 639
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v1, v2

    .line 648
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, v1

    .line 642
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_3

    move v1, v2

    .line 648
    goto :goto_0

    .line 643
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 644
    const/16 v4, 0x20

    if-eq v3, v4, :cond_4

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    const/16 v4, 0xd

    if-eq v3, v4, :cond_4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 642
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
