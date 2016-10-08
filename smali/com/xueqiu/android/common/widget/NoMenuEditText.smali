.class public Lcom/xueqiu/android/common/widget/NoMenuEditText;
.super Landroid/widget/EditText;
.source "NoMenuEditText.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/NoMenuEditText;->a:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/NoMenuEditText;->a()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/NoMenuEditText;->a:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/NoMenuEditText;->a()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/NoMenuEditText;->a:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/NoMenuEditText;->a()V

    .line 62
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    new-instance v0, Lcom/xueqiu/android/common/widget/t;

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/common/widget/t;-><init>(Lcom/xueqiu/android/common/widget/NoMenuEditText;B)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/NoMenuEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/NoMenuEditText;->setLongClickable(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public isSuggestionsEnabled()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method
