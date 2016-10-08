.class final enum Lcom/sleepycat/b/j;
.super Ljava/lang/Enum;
.source "Database.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/j;

.field public static final enum b:Lcom/sleepycat/b/j;

.field public static final enum c:Lcom/sleepycat/b/j;

.field public static final enum d:Lcom/sleepycat/b/j;

.field private static final synthetic e:[Lcom/sleepycat/b/j;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/sleepycat/b/j;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/j;->a:Lcom/sleepycat/b/j;

    new-instance v0, Lcom/sleepycat/b/j;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/j;->b:Lcom/sleepycat/b/j;

    new-instance v0, Lcom/sleepycat/b/j;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/j;->c:Lcom/sleepycat/b/j;

    new-instance v0, Lcom/sleepycat/b/j;

    const-string v1, "PREEMPTED"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/j;->d:Lcom/sleepycat/b/j;

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sleepycat/b/j;

    sget-object v1, Lcom/sleepycat/b/j;->a:Lcom/sleepycat/b/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/j;->b:Lcom/sleepycat/b/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/j;->c:Lcom/sleepycat/b/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/j;->d:Lcom/sleepycat/b/j;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sleepycat/b/j;->e:[Lcom/sleepycat/b/j;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/j;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/sleepycat/b/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/j;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/j;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sleepycat/b/j;->e:[Lcom/sleepycat/b/j;

    invoke-virtual {v0}, [Lcom/sleepycat/b/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/j;

    return-object v0
.end method
