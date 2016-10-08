.class public final enum Lcom/sleepycat/b/i/d/d;
.super Ljava/lang/Enum;
.source "LeaveGroupEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/i/d/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/i/d/d;

.field public static final enum b:Lcom/sleepycat/b/i/d/d;

.field public static final enum c:Lcom/sleepycat/b/i/d/d;

.field private static final synthetic d:[Lcom/sleepycat/b/i/d/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/sleepycat/b/i/d/d;

    const-string v1, "NORMAL_SHUTDOWN"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/d/d;->a:Lcom/sleepycat/b/i/d/d;

    .line 37
    new-instance v0, Lcom/sleepycat/b/i/d/d;

    const-string v1, "ABNORMAL_TERMINATION"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/d/d;->b:Lcom/sleepycat/b/i/d/d;

    .line 42
    new-instance v0, Lcom/sleepycat/b/i/d/d;

    const-string v1, "MASTER_SHUTDOWN_GROUP"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/i/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/d/d;->c:Lcom/sleepycat/b/i/d/d;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sleepycat/b/i/d/d;

    sget-object v1, Lcom/sleepycat/b/i/d/d;->a:Lcom/sleepycat/b/i/d/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/i/d/d;->b:Lcom/sleepycat/b/i/d/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/i/d/d;->c:Lcom/sleepycat/b/i/d/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sleepycat/b/i/d/d;->d:[Lcom/sleepycat/b/i/d/d;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/i/d/d;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sleepycat/b/i/d/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/d/d;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/i/d/d;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sleepycat/b/i/d/d;->d:[Lcom/sleepycat/b/i/d/d;

    invoke-virtual {v0}, [Lcom/sleepycat/b/i/d/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/i/d/d;

    return-object v0
.end method
