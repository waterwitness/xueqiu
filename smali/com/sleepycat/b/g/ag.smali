.class final enum Lcom/sleepycat/b/g/ag;
.super Ljava/lang/Enum;
.source "LogEntryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/g/ag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/g/ag;

.field public static final enum b:Lcom/sleepycat/b/g/ag;

.field private static final synthetic d:[Lcom/sleepycat/b/g/ag;


# instance fields
.field final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 721
    new-instance v0, Lcom/sleepycat/b/g/ag;

    const-string v1, "OUTSIDE_LATCH"

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/g/ag;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    .line 722
    new-instance v0, Lcom/sleepycat/b/g/ag;

    const-string v1, "INSIDE_LATCH"

    invoke-direct {v0, v1, v3, v2}, Lcom/sleepycat/b/g/ag;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sleepycat/b/g/ag;->b:Lcom/sleepycat/b/g/ag;

    .line 720
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sleepycat/b/g/ag;

    sget-object v1, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/g/ag;->b:Lcom/sleepycat/b/g/ag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sleepycat/b/g/ag;->d:[Lcom/sleepycat/b/g/ag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 726
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 727
    iput-boolean p3, p0, Lcom/sleepycat/b/g/ag;->c:Z

    .line 728
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/g/ag;
    .locals 1

    .prologue
    .line 720
    const-class v0, Lcom/sleepycat/b/g/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/ag;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/g/ag;
    .locals 1

    .prologue
    .line 720
    sget-object v0, Lcom/sleepycat/b/g/ag;->d:[Lcom/sleepycat/b/g/ag;

    invoke-virtual {v0}, [Lcom/sleepycat/b/g/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/g/ag;

    return-object v0
.end method
