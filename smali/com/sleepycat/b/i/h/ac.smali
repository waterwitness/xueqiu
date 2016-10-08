.class public final enum Lcom/sleepycat/b/i/h/ac;
.super Ljava/lang/Enum;
.source "ServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/i/h/ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/i/h/ac;

.field public static final enum b:Lcom/sleepycat/b/i/h/ac;

.field public static final enum c:Lcom/sleepycat/b/i/h/ac;

.field public static final enum d:Lcom/sleepycat/b/i/h/ac;

.field private static final synthetic e:[Lcom/sleepycat/b/i/h/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/sleepycat/b/i/h/ac;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/h/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/h/ac;->a:Lcom/sleepycat/b/i/h/ac;

    new-instance v0, Lcom/sleepycat/b/i/h/ac;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/h/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/h/ac;->b:Lcom/sleepycat/b/i/h/ac;

    new-instance v0, Lcom/sleepycat/b/i/h/ac;

    const-string v1, "FORMAT_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/i/h/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/h/ac;->c:Lcom/sleepycat/b/i/h/ac;

    new-instance v0, Lcom/sleepycat/b/i/h/ac;

    const-string v1, "UNKNOWN_SERVICE"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/i/h/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/h/ac;->d:Lcom/sleepycat/b/i/h/ac;

    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sleepycat/b/i/h/ac;

    sget-object v1, Lcom/sleepycat/b/i/h/ac;->a:Lcom/sleepycat/b/i/h/ac;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/i/h/ac;->b:Lcom/sleepycat/b/i/h/ac;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/i/h/ac;->c:Lcom/sleepycat/b/i/h/ac;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/i/h/ac;->d:Lcom/sleepycat/b/i/h/ac;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sleepycat/b/i/h/ac;->e:[Lcom/sleepycat/b/i/h/ac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(I)Lcom/sleepycat/b/i/h/ac;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/sleepycat/b/i/h/ac;->values()[Lcom/sleepycat/b/i/h/ac;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 117
    invoke-static {}, Lcom/sleepycat/b/i/h/ac;->values()[Lcom/sleepycat/b/i/h/ac;

    move-result-object v0

    aget-object v0, v0, p0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/i/h/ac;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/sleepycat/b/i/h/ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/h/ac;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/i/h/ac;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/sleepycat/b/i/h/ac;->e:[Lcom/sleepycat/b/i/h/ac;

    invoke-virtual {v0}, [Lcom/sleepycat/b/i/h/ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/i/h/ac;

    return-object v0
.end method


# virtual methods
.method final a()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/sleepycat/b/i/h/ac;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 112
    return-object v0
.end method
