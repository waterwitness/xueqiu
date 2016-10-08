.class public final enum Lcom/sleepycat/b/ao;
.super Ljava/lang/Enum;
.source "LockMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/ao;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/ao;

.field public static final enum b:Lcom/sleepycat/b/ao;

.field public static final enum c:Lcom/sleepycat/b/ao;

.field public static final enum d:Lcom/sleepycat/b/ao;

.field private static final synthetic e:[Lcom/sleepycat/b/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    new-instance v0, Lcom/sleepycat/b/ao;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    .line 137
    new-instance v0, Lcom/sleepycat/b/ao;

    const-string v1, "READ_UNCOMMITTED"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/ao;->b:Lcom/sleepycat/b/ao;

    .line 152
    new-instance v0, Lcom/sleepycat/b/ao;

    const-string v1, "READ_COMMITTED"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/ao;->c:Lcom/sleepycat/b/ao;

    .line 170
    new-instance v0, Lcom/sleepycat/b/ao;

    const-string v1, "RMW"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sleepycat/b/ao;

    sget-object v1, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/ao;->b:Lcom/sleepycat/b/ao;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/ao;->c:Lcom/sleepycat/b/ao;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sleepycat/b/ao;->e:[Lcom/sleepycat/b/ao;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/ao;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/sleepycat/b/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/ao;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/ao;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/sleepycat/b/ao;->e:[Lcom/sleepycat/b/ao;

    invoke-virtual {v0}, [Lcom/sleepycat/b/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/ao;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LockMode."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/ao;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
