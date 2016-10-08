.class public final enum Lcom/sleepycat/b/av;
.super Ljava/lang/Enum;
.source "OperationStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/av;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/av;

.field public static final enum b:Lcom/sleepycat/b/av;

.field public static final enum c:Lcom/sleepycat/b/av;

.field public static final enum d:Lcom/sleepycat/b/av;

.field private static final synthetic e:[Lcom/sleepycat/b/av;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/sleepycat/b/av;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    .line 24
    new-instance v0, Lcom/sleepycat/b/av;

    const-string v1, "KEYEXIST"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/av;->b:Lcom/sleepycat/b/av;

    .line 32
    new-instance v0, Lcom/sleepycat/b/av;

    const-string v1, "KEYEMPTY"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;

    .line 37
    new-instance v0, Lcom/sleepycat/b/av;

    const-string v1, "NOTFOUND"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sleepycat/b/av;

    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/av;->b:Lcom/sleepycat/b/av;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sleepycat/b/av;->e:[Lcom/sleepycat/b/av;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/av;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/sleepycat/b/av;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/av;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/av;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/sleepycat/b/av;->e:[Lcom/sleepycat/b/av;

    invoke-virtual {v0}, [Lcom/sleepycat/b/av;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/av;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OperationStatus."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/av;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
