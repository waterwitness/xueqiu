.class public final enum Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;
.super Ljava/lang/Enum;
.source "LDEngineDemo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

.field public static final enum UA_CALL_STATE_CALLING:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

.field public static final enum UA_CALL_STATE_CONNECTED:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

.field public static final enum UA_CALL_STATE_IDLE:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

.field public static final enum UA_CALL_STATE_RINGING:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;


# instance fields
.field private final _call_state:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    const-string v1, "UA_CALL_STATE_CALLING"

    invoke-direct {v0, v1, v3, v3}, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->UA_CALL_STATE_CALLING:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    const-string v1, "UA_CALL_STATE_RINGING"

    invoke-direct {v0, v1, v4, v4}, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->UA_CALL_STATE_RINGING:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    const-string v1, "UA_CALL_STATE_CONNECTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->UA_CALL_STATE_CONNECTED:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    new-instance v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    const-string v1, "UA_CALL_STATE_IDLE"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v6, v2}, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->UA_CALL_STATE_IDLE:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    sget-object v1, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->UA_CALL_STATE_CALLING:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->UA_CALL_STATE_RINGING:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->UA_CALL_STATE_CONNECTED:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->UA_CALL_STATE_IDLE:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->ENUM$VALUES:[Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->_call_state:I

    .line 51
    return-void
.end method

.method public static getByValue(I)Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->values()[Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 59
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->TAG:Ljava/lang/String;

    const-string v1, "getByValue-failed-\u6ca1\u6709\u5339\u914d\u7684\u547c\u53eb\u72b6\u6001\u3002"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 54
    :cond_1
    aget-object v0, v2, v1

    .line 55
    iget v4, v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->_call_state:I

    if-eq v4, p0, :cond_0

    .line 54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    return-object v0
.end method

.method public static values()[Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->ENUM$VALUES:[Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    array-length v1, v0

    new-array v2, v1, [Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
