.class public Lcom/pingan/paphone/utils/LogM;
.super Ljava/lang/Object;
.source "LogM.java"


# static fields
.field private static final DEBUG:I = 0x2

.field private static final ERROR:I = 0x5

.field private static final INFO:I = 0x3

.field private static LOGLEVEL:I = 0x0

.field private static final VERBOSE:I = 0x1

.field private static final WARN:I = 0x4

.field static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "LogM"

    sput-object v0, Lcom/pingan/paphone/utils/LogM;->tag:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    sput v0, Lcom/pingan/paphone/utils/LogM;->LOGLEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x2

    sget v1, Lcom/pingan/paphone/utils/LogM;->LOGLEVEL:I

    if-le v0, v1, :cond_1

    .line 33
    sget-object v0, Lcom/pingan/paphone/utils/LogM;->tag:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x2

    sget v1, Lcom/pingan/paphone/utils/LogM;->LOGLEVEL:I

    if-le v0, v1, :cond_1

    .line 39
    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x5

    sget v1, Lcom/pingan/paphone/utils/LogM;->LOGLEVEL:I

    if-le v0, v1, :cond_1

    .line 69
    sget-object v0, Lcom/pingan/paphone/utils/LogM;->tag:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x5

    sget v1, Lcom/pingan/paphone/utils/LogM;->LOGLEVEL:I

    if-le v0, v1, :cond_1

    .line 75
    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x5

    sget v1, Lcom/pingan/paphone/utils/LogM;->LOGLEVEL:I

    if-le v0, v1, :cond_1

    .line 81
    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x3

    sget v1, Lcom/pingan/paphone/utils/LogM;->LOGLEVEL:I

    if-le v0, v1, :cond_1

    .line 45
    sget-object v0, Lcom/pingan/paphone/utils/LogM;->tag:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x3

    sget v1, Lcom/pingan/paphone/utils/LogM;->LOGLEVEL:I

    if-le v0, v1, :cond_1

    .line 51
    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/pingan/paphone/utils/LogM;->LOGLEVEL:I

    if-gtz v0, :cond_1

    .line 17
    sget-object v0, Lcom/pingan/paphone/utils/LogM;->tag:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/pingan/paphone/utils/LogM;->LOGLEVEL:I

    if-gtz v0, :cond_1

    .line 25
    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x4

    sget v1, Lcom/pingan/paphone/utils/LogM;->LOGLEVEL:I

    if-le v0, v1, :cond_1

    .line 57
    sget-object v0, Lcom/pingan/paphone/utils/LogM;->tag:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x4

    sget v1, Lcom/pingan/paphone/utils/LogM;->LOGLEVEL:I

    if-le v0, v1, :cond_1

    .line 63
    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    return-void
.end method
