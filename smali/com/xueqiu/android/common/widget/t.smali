.class final Lcom/xueqiu/android/common/widget/t;
.super Ljava/lang/Object;
.source "NoMenuEditText.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/NoMenuEditText;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/common/widget/NoMenuEditText;)V
    .locals 1

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/t;->a:Lcom/xueqiu/android/common/widget/NoMenuEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-class v0, Lcom/xueqiu/android/common/widget/NoMenuEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/t;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/common/widget/NoMenuEditText;B)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/t;-><init>(Lcom/xueqiu/android/common/widget/NoMenuEditText;)V

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method
