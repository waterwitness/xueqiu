.class public final enum Lcom/sleepycat/b/bq;
.super Ljava/lang/Enum;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/bq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/bq;

.field public static final enum b:Lcom/sleepycat/b/bq;

.field public static final enum c:Lcom/sleepycat/b/bq;

.field public static final enum d:Lcom/sleepycat/b/bq;

.field public static final enum e:Lcom/sleepycat/b/bq;

.field private static final synthetic f:[Lcom/sleepycat/b/bq;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/sleepycat/b/bq;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/bq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/bq;->a:Lcom/sleepycat/b/bq;

    .line 129
    new-instance v0, Lcom/sleepycat/b/bq;

    const-string v1, "POSSIBLY_COMMITTED"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/bq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/bq;->b:Lcom/sleepycat/b/bq;

    .line 141
    new-instance v0, Lcom/sleepycat/b/bq;

    const-string v1, "COMMITTED"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/bq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/bq;->c:Lcom/sleepycat/b/bq;

    .line 149
    new-instance v0, Lcom/sleepycat/b/bq;

    const-string v1, "MUST_ABORT"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/bq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/bq;->d:Lcom/sleepycat/b/bq;

    .line 154
    new-instance v0, Lcom/sleepycat/b/bq;

    const-string v1, "ABORTED"

    invoke-direct {v0, v1, v6}, Lcom/sleepycat/b/bq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/bq;->e:Lcom/sleepycat/b/bq;

    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sleepycat/b/bq;

    sget-object v1, Lcom/sleepycat/b/bq;->a:Lcom/sleepycat/b/bq;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/bq;->b:Lcom/sleepycat/b/bq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/bq;->c:Lcom/sleepycat/b/bq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/bq;->d:Lcom/sleepycat/b/bq;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/b/bq;->e:Lcom/sleepycat/b/bq;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sleepycat/b/bq;->f:[Lcom/sleepycat/b/bq;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/bq;
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/sleepycat/b/bq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/bq;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/bq;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/sleepycat/b/bq;->f:[Lcom/sleepycat/b/bq;

    invoke-virtual {v0}, [Lcom/sleepycat/b/bq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/bq;

    return-object v0
.end method
