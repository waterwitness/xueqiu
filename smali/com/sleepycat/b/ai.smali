.class public final enum Lcom/sleepycat/b/ai;
.super Ljava/lang/Enum;
.source "ForeignKeyDeleteAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/ai;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/ai;

.field public static final enum b:Lcom/sleepycat/b/ai;

.field public static final enum c:Lcom/sleepycat/b/ai;

.field private static final synthetic d:[Lcom/sleepycat/b/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/sleepycat/b/ai;

    const-string v1, "ABORT"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/ai;->a:Lcom/sleepycat/b/ai;

    .line 37
    new-instance v0, Lcom/sleepycat/b/ai;

    const-string v1, "CASCADE"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/ai;->b:Lcom/sleepycat/b/ai;

    .line 45
    new-instance v0, Lcom/sleepycat/b/ai;

    const-string v1, "NULLIFY"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/ai;->c:Lcom/sleepycat/b/ai;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sleepycat/b/ai;

    sget-object v1, Lcom/sleepycat/b/ai;->a:Lcom/sleepycat/b/ai;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/ai;->b:Lcom/sleepycat/b/ai;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/ai;->c:Lcom/sleepycat/b/ai;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sleepycat/b/ai;->d:[Lcom/sleepycat/b/ai;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/ai;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sleepycat/b/ai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/ai;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/ai;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sleepycat/b/ai;->d:[Lcom/sleepycat/b/ai;

    invoke-virtual {v0}, [Lcom/sleepycat/b/ai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/ai;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ForeignKeyDeleteAction."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/ai;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
