.class public final enum Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;
.super Ljava/lang/Enum;
.source "LDEngineDemo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

.field public static final enum UA_CALL_TYPE_NULL:Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

.field public static final enum UA_CALL_TYPE_VIDEO:Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

.field public static final enum UA_CALL_TYPE_VOICE:Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    const-string v1, "UA_CALL_TYPE_VOICE"

    invoke-direct {v0, v1, v2}, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;->UA_CALL_TYPE_VOICE:Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    const-string v1, "UA_CALL_TYPE_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;->UA_CALL_TYPE_VIDEO:Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    const-string v1, "UA_CALL_TYPE_NULL"

    invoke-direct {v0, v1, v4}, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;->UA_CALL_TYPE_NULL:Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    sget-object v1, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;->UA_CALL_TYPE_VOICE:Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;->UA_CALL_TYPE_VIDEO:Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;->UA_CALL_TYPE_NULL:Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    aput-object v1, v0, v4

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;->ENUM$VALUES:[Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    return-object v0
.end method

.method public static values()[Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;->ENUM$VALUES:[Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    array-length v1, v0

    new-array v2, v1, [Lcom/letpower/engine/LDEngineDemo$UA_CALL_TYPE_1;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
